"""Motor automatizado de entrevistas biográficas para Memorias Vivas Studio.

Parsea las 126 preguntas calibradas desde ``entrevistas/guion_maestro.md``,
genera planes personalizados de 6 semanas según el perfil familiar, formatea
mensajes empáticos listos para WhatsApp / TTS y genera bloques listos para Typst.
"""

from __future__ import annotations

import argparse
import json
import re
from pathlib import Path
from typing import Any

PERFIL_SINONIMOS: dict[str, tuple[str, ...]] = {
    "rural": ("rural", "campo", "pueblo", "raíces", "tierra", "cosecha"),
    "urbano": ("urbano", "ciudad", "barrio", "tiendas", "cine", "escalera"),
    "oficio": ("oficio", "trabajo", "laboral", "aprendices", "taller", "jubilación"),
    "gastronomía": ("gastronomía", "cocina", "mesa", "sobremesa", "plato", "receta"),
    "nietos": ("nietos", "niños", "generación", "abuelo"),
    "emigración": ("emigración", "emigraron", "país"),
}


def parsear_guion_maestro(guion_path: Path) -> dict[int, dict[str, Any]]:
    """Parsea el catálogo de 6 semanas (126 preguntas) desde ``guion_maestro.md``."""
    texto = guion_path.read_text(encoding="utf-8")
    semanas: dict[int, dict[str, Any]] = {}

    semana_actual: int | None = None
    categoria_optativa_actual = "General"
    ultima_troncal: dict[str, Any] | None = None

    re_semana = re.compile(r"^##\s+SEMANA\s+(\d+):\s+(.+)$")
    re_apertura = re.compile(r"^\*\s+\*\*Frase de Apertura de Sesión\*\*:\s+(.+)$")
    re_troncal = re.compile(r"^\d+\.\s+\*\*\[(S\d+-T\d+)\]\s+(.+?)\*\*\s*$")
    re_pregunta_troncal = re.compile(r'^\s+\*\s+\*\*Pregunta\*\*:\s+\*"?(.+?)"?\*\s*$')
    re_disparador = re.compile(
        r"^\s+\*\s+\*\*(?:Disparador sensorial|Instrucción técnica)\*\*:\s+(.+?)\s*$"
    )
    re_repregunta = re.compile(
        r'^\s+\*\s+\*\*Repregunta de profundización\*\*:\s+\*"?(.+?)"?\*\s*$'
    )
    re_cat_optativa = re.compile(r"^\*\s+\*\*`\[(.+?)\]`\*\*\s*$")
    re_optativa = re.compile(
        r'^\s+\*\s+\*\*\d+\.\s+\[(S\d+-O\d+)\]\*\*(?:\s+\*\((.+?)\)\*)?\s+\*"?(.+?)"?\*\s*$'
    )

    for linea_raw in texto.splitlines():
        linea = linea_raw.rstrip()

        if m := re_semana.match(linea):
            semana_actual = int(m.group(1))
            semanas[semana_actual] = {
                "semana": semana_actual,
                "titulo": m.group(2).strip(),
                "frase_apertura": "",
                "troncales": [],
                "optativas": [],
            }
            ultima_troncal = None
            continue

        if semana_actual is None:
            continue

        if m := re_apertura.match(linea):
            semanas[semana_actual]["frase_apertura"] = m.group(1).strip().strip('*"')
            continue

        if m := re_troncal.match(linea):
            ultima_troncal = {
                "id": m.group(1),
                "tipo": "troncal",
                "categoria": "Troncal",
                "titulo": m.group(2).strip(),
                "pregunta": "",
                "disparador_sensorial": "",
                "repregunta": "",
            }
            semanas[semana_actual]["troncales"].append(ultima_troncal)
            continue

        if ultima_troncal is not None:
            if m := re_pregunta_troncal.match(linea):
                ultima_troncal["pregunta"] = m.group(1).strip().strip('"')
                continue
            if m := re_disparador.match(linea):
                ultima_troncal["disparador_sensorial"] = m.group(1).strip()
                continue
            if m := re_repregunta.match(linea):
                ultima_troncal["repregunta"] = m.group(1).strip().strip('"')
                continue

        if m := re_cat_optativa.match(linea):
            categoria_optativa_actual = m.group(1).strip()
            ultima_troncal = None
            continue

        if m := re_optativa.match(linea):
            nota_cond = m.group(2).strip() if m.group(2) else ""
            pregunta_txt = m.group(3).strip().strip('"')
            semanas[semana_actual]["optativas"].append(
                {
                    "id": m.group(1),
                    "tipo": "optativa",
                    "categoria": categoria_optativa_actual,
                    "condicion": nota_cond,
                    "titulo": categoria_optativa_actual,
                    "pregunta": pregunta_txt,
                    "disparador_sensorial": "",
                    "repregunta": "",
                }
            )

    return semanas


def _coincide_exclusiones(texto: str, exclusiones: list[str]) -> bool:
    """Comprueba si una pregunta toca algún tema excluido por la familia."""
    texto_lower = texto.lower()
    return any(exc.strip().lower() in texto_lower for exc in exclusiones if exc.strip())


def _coincide_perfil(optativa: dict[str, Any], perfiles_norm: list[str]) -> bool:
    """Determina si una pregunta optativa encaja con alguno de los perfiles activos."""
    fuente = f"{optativa['categoria']} {optativa['condicion']} {optativa['pregunta']}".lower()
    for perfil in perfiles_norm:
        claves = PERFIL_SINONIMOS.get(perfil, (perfil,))
        if any(clave in fuente for clave in claves):
            return True
    return False


def generar_plan_personalizado(
    nombre_protagonista: str,
    hijos: list[str],
    perfiles_activos: list[str],
    exclusiones: list[str] | None = None,
    guion_path: Path | None = None,
) -> dict[str, Any]:
    """Construye un plan completo de 6 semanas combinando troncales y optativas afines."""
    if guion_path is None:
        guion_path = Path(__file__).resolve().parent.parent / "entrevistas" / "guion_maestro.md"

    exclusiones = exclusiones or []
    catalogo = parsear_guion_maestro(guion_path)
    perfiles_norm = [p.strip().lower() for p in perfiles_activos if p.strip()]

    semanas_plan: list[dict[str, Any]] = []
    total_seleccionadas = 0
    total_disponibles = 0

    for num_semana in sorted(catalogo.keys()):
        data = catalogo[num_semana]
        total_disponibles += len(data["troncales"]) + len(data["optativas"])

        seleccionadas: list[dict[str, Any]] = []
        for q in data["troncales"]:
            if not _coincide_exclusiones(f"{q['titulo']} {q['pregunta']}", exclusiones):
                seleccionadas.append(q)

        for q in data["optativas"]:
            if _coincide_exclusiones(f"{q['categoria']} {q['pregunta']}", exclusiones):
                continue
            if _coincide_perfil(q, perfiles_norm):
                seleccionadas.append(q)

        total_seleccionadas += len(seleccionadas)
        semanas_plan.append(
            {
                "semana": num_semana,
                "titulo": data["titulo"],
                "frase_apertura": data["frase_apertura"],
                "preguntas": seleccionadas,
            }
        )

    return {
        "protagonista": nombre_protagonista,
        "compradores_hijos": hijos,
        "perfiles_activos": perfiles_activos,
        "exclusiones": exclusiones,
        "total_catalogo_leido": total_disponibles,
        "total_preguntas_plan": total_seleccionadas,
        "semanas": semanas_plan,
    }


def formatear_mensaje_whatsapp(
    semana: int,
    pregunta_obj: dict[str, Any],
    nombre_protagonista: str,
    frase_apertura: str = "",
) -> str:
    """Redacta el mensaje cálido para WhatsApp sin tecnicismos ni preguntas de examen."""
    partes = [
        f"Hola {nombre_protagonista}, ¿qué tal ha ido el día? Soy tu biógrafo de Memorias Vivas.",
        f"Esta semana estamos preparando el capítulo {semana} de tu historia.",
    ]
    if frase_apertura:
        partes.append(frase_apertura)

    partes.append(f"\nCuando estés cómodo/a, mándame una nota de voz contándome:\n«{pregunta_obj['pregunta']}»")

    if pregunta_obj.get("disparador_sensorial"):
        partes.append(f"\n(Para ayudarte a entrar en ese momento, piensa en: {pregunta_obj['disparador_sensorial']})")

    partes.append("\nSin ninguna prisa: pulsa el micrófono cuando te apetezca y cuéntalo como si estuviéramos tomando un café.")
    return "\n".join(partes)


def generar_bloque_typst(
    capitulo_num: int,
    titulo: str,
    texto_editado: str,
    qr_id: str,
    duracion: str,
) -> str:
    """Exporta un capítulo completo formateado en sintaxis Typst listo para inyectar."""
    romanos = {1: "I", 2: "II", 3: "III", 4: "IV", 5: "V", 6: "VI"}
    num_romano = romanos.get(capitulo_num, str(capitulo_num))

    return (
        f"// --- CAPÍTULO {num_romano} ---\n"
        f"= Capítulo {num_romano}: {titulo}\n\n"
        f"#bloque_qr(\n"
        f'  "Escanea el código para escuchar la voz original en este capítulo.",\n'
        f'  "{qr_id}",\n'
        f'  "{duracion}"\n'
        f")\n\n"
        f"{texto_editado.strip()}\n\n"
        f"#pagebreak()\n"
    )


def main() -> int:
    """Punto de entrada CLI para generar demostraciones del motor de entrevistas."""
    parser = argparse.ArgumentParser(description="Motor Biógrafo Memorias Vivas Studio")
    parser.add_argument(
        "--demo",
        action="store_true",
        help="Ejecuta una demostración integral y guarda dist/plan_entrevista_demo.json",
    )
    args = parser.parse_args()

    if not args.demo:
        parser.print_help()
        return 0

    root_dir = Path(__file__).resolve().parent.parent
    guion_path = root_dir / "entrevistas" / "guion_maestro.md"
    output_json = root_dir / "dist" / "plan_entrevista_demo.json"
    output_json.parent.mkdir(parents=True, exist_ok=True)

    plan = generar_plan_personalizado(
        nombre_protagonista="Antonio González Morera",
        hijos=["Laura", "Carlos", "Miguel"],
        perfiles_activos=["Rural", "Oficio", "Gastronomía", "Nietos"],
        exclusiones=[],
        guion_path=guion_path,
    )

    primera_semana = plan["semanas"][0]
    primera_pregunta = primera_semana["preguntas"][0]
    ejemplo_whatsapp = formatear_mensaje_whatsapp(
        semana=1,
        pregunta_obj=primera_pregunta,
        nombre_protagonista=plan["protagonista"].split()[0],
        frase_apertura=primera_semana["frase_apertura"],
    )
    ejemplo_typst = generar_bloque_typst(
        capitulo_num=1,
        titulo="La casa del arroyo y los veranos sin reloj",
        texto_editado=(
            "Si cierro los ojos todavía huelo a leña húmeda y a romero recién cortado. "
            "En aquella casa baja junto al recodo del arroyo nos levantaba el cantar de los gallos "
            "y el puchero de los domingos reunía a toda la familia alrededor del hule."
        ),
        qr_id="MV-01",
        duracion="03:42",
    )

    payload_salida = {
        "plan": plan,
        "ejemplo_mensaje_whatsapp_semana_1": ejemplo_whatsapp,
        "ejemplo_bloque_typst": ejemplo_typst,
    }
    output_json.write_text(json.dumps(payload_salida, ensure_ascii=False, indent=2), encoding="utf-8")

    print(f"[OK] Catálogo leído: {plan['total_catalogo_leido']} preguntas (esperadas 126)")
    print(f"[OK] Plan personalizado generado para {plan['protagonista']}: {plan['total_preguntas_plan']} preguntas activas")
    print(f"[OK] Archivo exportado: {output_json}")
    print("\n--- EJEMPLO WHATSAPP SEMANA 1 ---")
    print(ejemplo_whatsapp)
    print("\n--- EJEMPLO BLOQUE TYPST ---")
    print(ejemplo_typst)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
