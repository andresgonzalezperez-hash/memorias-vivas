import sys
from pathlib import Path
import typst

def main():
    root_dir = Path(__file__).resolve().parent.parent
    input_typ = root_dir / "plantillas" / "libro_memorias.typ"
    output_pdf = root_dir / "dist" / "muestra_libro.pdf"
    output_pdf.parent.mkdir(parents=True, exist_ok=True)

    print(f"[*] Compilando plantilla editorial Typst...")
    print(f"    - Entrada: {input_typ}")
    print(f"    - Salida:  {output_pdf}")

    try:
        typst.compile(str(input_typ), output=str(output_pdf))
        size_kb = output_pdf.stat().st_size / 1024
        print(f"[OK] Compilacion completada con exito: {output_pdf.name} ({size_kb:.1f} KB)")
        return 0
    except Exception as e:
        print(f"[ERROR] Error al compilar Typst: {e}", file=sys.stderr)
        return 1

if __name__ == "__main__":
    sys.exit(main())
