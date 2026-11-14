# Lista de Tareas y Verificación: Memorias Vivas Studio (`tasks.md`)

## Fase 1: Fundamentos y Arquitectura del Negocio
- [x] Crear estructura de carpetas y repositorios del proyecto.
- [x] Redactar ficha de identidad y manual operativo [`AGENTS.md`](AGENTS.md).
- [x] Definir especificación formal de producto y alcance [`spec.md`](spec.md).
- [x] Redactar plano técnico, arquitectura y modelo de datos [`plan.md`](plan.md).
- [x] Generar el diagrama interactivo de arquitectura con la skill `archify` [`docs/architecture.html`](docs/architecture.html).

## Fase 2: Documentación Comercial y Pitch Deck
- [x] Redactar el dossier comercial maestro en formato Markdown [`docs/DOSSIER_COMERCIAL.md`](docs/DOSSIER_COMERCIAL.md).
- [x] Crear el dossier interactivo visual de alta gama en HTML/CSS [`docs/dossier.html`](docs/dossier.html) para presentación a clientes e inversores.

## Fase 3: Operaciones, Finanzas y Metodología
- [x] Elaborar el Guion Maestro de Entrevistas de Vida (6 semanas / 36 preguntas) [`entrevistas/guion_maestro.md`](entrevistas/guion_maestro.md).
- [x] Desarrollar el protocolo de evocación basado en Terapia de Reminiscencia y Psicogerontología [`entrevistas/metodologia_psicogerontologica.md`](entrevistas/metodologia_psicogerontologica.md).
- [x] Elaborar el escandallo de costes, unit economics y desglose financiero [`finanzas/modelo_financiero_escandallo.md`](finanzas/modelo_financiero_escandallo.md).
- [x] Redactar el contrato legal de confidencialidad, cesión de imagen y protección biométrica de voz [`legal/contrato_privacidad_encargo.md`](legal/contrato_privacidad_encargo.md).
- [x] Identificar y documentar la cadena de proveedores reales (imprentas POD, encuadernación artesanal, packaging, audio y envíos) [`operaciones/directorio_proveedores_reales.md`](operaciones/directorio_proveedores_reales.md).

## Fase 4: Pipeline Técnico Editorial y Verificación Empírica
- [x] Crear la plantilla tipográfica de imprenta en Typst [`plantillas/libro_memorias.typ`](plantillas/libro_memorias.typ).
- [x] Crear el script de compilación automática con `uv` [`plantillas/compilar_muestra.py`](plantillas/compilar_muestra.py).
- [x] Compilar empíricamente el PDF de muestra en `dist/muestra_libro.pdf` y verificar su correcta generación.
- [x] Registrar la iniciativa en la Bitácora Central [`C:\Proyectos\BITACORA.md`](../BITACORA.md).

## Fase 5: Adquisición Multicanal, Viralidad y Embudo de Ventas
- [x] Diseñar la estrategia de crecimiento viral y matriz de canales (Instagram Reels, TikTok, Meta Ads) [`marketing/estrategia_viral_gtm.md`](marketing/estrategia_viral_gtm.md).
- [x] Escribir los 3 guiones de vídeo virales paso a paso con hooks y tomas visuales [`marketing/guiones_videos_virales.md`](marketing/guiones_videos_virales.md).
- [x] Diseñar el embudo de ventas extremo a extremo (Landing Mobile, Checkout Stripe/Klarna, Postiz :4200 y n8n :5678) [`marketing/embudo_ventas_landing.md`](marketing/embudo_ventas_landing.md).
- [x] Integrar la pestaña interactiva de Viralidad y Marketing en el dossier ejecutivo [`docs/dossier.html`](docs/dossier.html).
- [x] Curar el directorio de bancos de imágenes vintage libres de derechos [`marketing/campañas_piloto/bancos_imagenes_vintage.md`](marketing/campañas_piloto/bancos_imagenes_vintage.md).
- [x] Crear la guía de producción y configuración del Ejemplo 2 con MoneyPrinterTurbo [`marketing/campañas_piloto/ejemplo_2_nostalgia_guia_y_config.md`](marketing/campañas_piloto/ejemplo_2_nostalgia_guia_y_config.md).
- [x] Crear el storyboard y la guía de producción del Ejemplo 3 (Antes vs Después / ASMR) [`marketing/campañas_piloto/ejemplo_3_demostracion_museo.md`](marketing/campañas_piloto/ejemplo_3_demostracion_museo.md).
- [x] Investigar y documentar la comparativa técnica de herramientas de UGC (Arcads, Creatify, TikTok Symphony) y restauración fotográfica (Topaz vs Magnific vs Krea vs SUPIR) [`marketing/comparativa_herramientas_ugc_y_restauracion.md`](marketing/comparativa_herramientas_ugc_y_restauracion.md).
- [x] Crear el Master Dashboard Operativo y C-Suite unificado en HTML interactivo con reproductor de vídeo, simulador financiero en vivo y dictámenes ejecutivos [`dashboard.html`](dashboard.html).

## Fase 6: Producción Completa (Libro 6 Capítulos, Motor Biógrafo y Landing Hallmark)
- [x] Ampliar la plantilla editorial Typst a los 6 capítulos biográficos completos con bloques de QR de voz viva y colofón [`plantillas/libro_memorias.typ`](plantillas/libro_memorias.typ) y recompilar `dist/muestra_libro.pdf`.
- [x] Ampliar el catálogo psicogerontológico a 126 preguntas calibradas (36 troncales + 90 de reserva) [`entrevistas/guion_maestro.md`](entrevistas/guion_maestro.md).
- [x] Crear plantilla de variables de entorno [`C:\Proyectos\memorias-vivas\.env.example`](.env.example).
- [x] Implementar el motor automatizado de entrevistas en Python [`operaciones/motor_biografo.py`](operaciones/motor_biografo.py) y verificar su ejecución `--demo`.
- [x] Crear el flujo automatizado importable para n8n [`operaciones/n8n_whatsapp_biografo.json`](operaciones/n8n_whatsapp_biografo.json).
- [x] Construir la Landing Page pública y configurador familiar bajo estándar `hallmark` [`web/index.html`](web/index.html) y verificar `0 FAIL / 0 REFLEX / 0 WARN` con `sloplint.mjs`.
