# Ficha de Operaciones: Memorias Vivas Studio (`AGENTS.md`)

## 1. Identidad y PropÃ³sito
* **Nombre Oficial**: Memorias Vivas Studio (FactorÃ­a de Legado y BiografÃ­as Familiares para la Edad Silver).
* **Ruta Base**: `C:\Proyectos\memorias-vivas`
* **PropÃ³sito**: Servicio premium de biÃ³grafo asistido por IA para personas mayores (+70 aÃ±os), contratado por sus hijos. Convierte 6 semanas de entrevistas orales (vÃ­a WhatsApp o telÃ©fono) y Ã¡lbumes antiguos en un libro encuadernado de lujo (tapa dura entelada, papel estucado, fotos restauradas a 300 DPI y cÃ³digos QR con la voz original viva del protagonista).
* **Modelo de Negocio**: Alto ticket por proyecto (490 â‚¬ - 890 â‚¬) con margen bruto >85% y venta de copias familiares adicionales.

## 2. Comandos de OperaciÃ³n RÃ¡pida
* **Abrir el Master Dashboard Operativo y C-Suite**:
  ```powershell
  Start-Process "dashboard.html"
  ```
* **CompilaciÃ³n de libro de muestra a PDF**:
  ```powershell
  uv run --with typst python plantillas/compilar_muestra.py
  ```
* **VisualizaciÃ³n del Dossier Comercial (Browser)**:
  ```powershell
  Start-Process "docs\dossier.html"
  ```
* **VisualizaciÃ³n de la Arquitectura Operativa (Archify)**:
  ```powershell
  Start-Process "docs\architecture.html"
  ```

## 3. Repositorio de Documentos Clave
* **EspecificaciÃ³n y Requisitos**: [`spec.md`](spec.md)
* **Plano TÃ©cnico y Arquitectura**: [`plan.md`](plan.md)
* **Tareas y Hoja de Ruta**: [`tasks.md`](tasks.md)
* **Dossier Comercial y Pitch Deck**: [`docs/dossier.html`](docs/dossier.html) y [`docs/DOSSIER_COMERCIAL.md`](docs/DOSSIER_COMERCIAL.md)
* **Diagrama Interactivo Archify**: [`docs/architecture.html`](docs/architecture.html)
* **Guion de Entrevistas de Vida (6 semanas)**: [`entrevistas/guion_maestro.md`](entrevistas/guion_maestro.md)
* **Protocolo y PsicologÃ­a de la Tercera Edad**: [`entrevistas/metodologia_psicogerontologica.md`](entrevistas/metodologia_psicogerontologica.md)
* **Modelo Financiero y Escandallo de Costes**: [`finanzas/modelo_financiero_escandallo.md`](finanzas/modelo_financiero_escandallo.md)
* **Contrato de Privacidad y Encargo**: [`legal/contrato_privacidad_encargo.md`](legal/contrato_privacidad_encargo.md)
* **Directorio de Proveedores y Cadena de Suministro**: [`operaciones/directorio_proveedores_reales.md`](operaciones/directorio_proveedores_reales.md)
* **CampaÃ±as Piloto y Bancos Vintage**: [`marketing/campaÃ±as_piloto/bancos_imagenes_vintage.md`](marketing/campaÃ±as_piloto/bancos_imagenes_vintage.md), [`marketing/campaÃ±as_piloto/ejemplo_2_nostalgia_guia_y_config.md`](marketing/campaÃ±as_piloto/ejemplo_2_nostalgia_guia_y_config.md) y [`marketing/campaÃ±as_piloto/ejemplo_3_demostracion_museo.md`](marketing/campaÃ±as_piloto/ejemplo_3_demostracion_museo.md)
* **Comparativa de Vanguardia (UGC & RestauraciÃ³n)**: [`marketing/comparativa_herramientas_ugc_y_restauracion.md`](marketing/comparativa_herramientas_ugc_y_restauracion.md)
* **Plantilla TipogrÃ¡fica Typst**: [`plantillas/libro_memorias.typ`](plantillas/libro_memorias.typ)

## 4. GuardarraÃ­les y Privacidad
* **RetenciÃ³n Cero de Datos**: Los modelos LLM y de transcripciÃ³n se invocan bajo API con retenciÃ³n cero y sin entrenamiento con datos del usuario.
* **Confidencialidad Estricta**: Los audios crudos de las familias se almacenan en carpetas locales encriptadas o se purgan a los 60 dÃ­as tras la entrega del libro final.

