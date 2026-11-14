# Ficha de Operaciones: Memorias Vivas Studio (`AGENTS.md`)

## 1. Identidad y Propósito
* **Nombre Oficial**: Memorias Vivas Studio (Factoría de Legado y Biografías Familiares para la Edad Silver).
* **Ruta Base**: `C:\Proyectos\memorias-vivas`
* **Propósito**: Servicio premium de biógrafo asistido por IA para personas mayores (+70 años), contratado por sus hijos. Convierte 6 semanas de entrevistas orales (vía WhatsApp o teléfono) y álbumes antiguos en un libro encuadernado de lujo (tapa dura entelada, papel estucado, fotos restauradas a 300 DPI y códigos QR con la voz original viva del protagonista).
* **Modelo de Negocio**: Alto ticket por proyecto (490 € - 890 €) con margen bruto >85% y venta de copias familiares adicionales.

## 2. Comandos de Operación Rápida
* **Abrir el Master Dashboard Operativo y C-Suite**:
  ```powershell
  Start-Process "dashboard.html"
  ```
* **Abrir la Landing Pública & Configurador Familiar**:
  ```powershell
  Start-Process "web\index.html"
  ```
* **Ejecutar demostración del Motor Biógrafo Automatizado**:
  ```powershell
  uv run python operaciones/motor_biografo.py --demo
  ```
* **Compilación de libro de muestra (6 capítulos completos) a PDF**:
  ```powershell
  uv run --with typst python plantillas/compilar_muestra.py
  ```
* **Visualización del Dossier Comercial (Browser)**:
  ```powershell
  Start-Process "docs\dossier.html"
  ```
* **Visualización de la Arquitectura Operativa (Archify)**:
  ```powershell
  Start-Process "docs\architecture.html"
  ```

## 3. Repositorio de Documentos Clave
* **Especificación y Requisitos**: [`spec.md`](spec.md)
* **Plano Técnico y Arquitectura**: [`plan.md`](plan.md)
* **Tareas y Hoja de Ruta**: [`tasks.md`](tasks.md)
* **Dossier Comercial y Pitch Deck**: [`docs/dossier.html`](docs/dossier.html) y [`docs/DOSSIER_COMERCIAL.md`](docs/DOSSIER_COMERCIAL.md)
* **Diagrama Interactivo Archify**: [`docs/architecture.html`](docs/architecture.html)
* **Guion de Entrevistas de Vida (6 semanas)**: [`entrevistas/guion_maestro.md`](entrevistas/guion_maestro.md)
* **Protocolo y Psicología de la Tercera Edad**: [`entrevistas/metodologia_psicogerontologica.md`](entrevistas/metodologia_psicogerontologica.md)
* **Modelo Financiero y Escandallo de Costes**: [`finanzas/modelo_financiero_escandallo.md`](finanzas/modelo_financiero_escandallo.md)
* **Contrato de Privacidad y Encargo**: [`legal/contrato_privacidad_encargo.md`](legal/contrato_privacidad_encargo.md)
* **Directorio de Proveedores y Cadena de Suministro**: [`operaciones/directorio_proveedores_reales.md`](operaciones/directorio_proveedores_reales.md)
* **Campañas Piloto y Bancos Vintage**: [`marketing/campañas_piloto/bancos_imagenes_vintage.md`](marketing/campañas_piloto/bancos_imagenes_vintage.md), [`marketing/campañas_piloto/ejemplo_2_nostalgia_guia_y_config.md`](marketing/campañas_piloto/ejemplo_2_nostalgia_guia_y_config.md) y [`marketing/campañas_piloto/ejemplo_3_demostracion_museo.md`](marketing/campañas_piloto/ejemplo_3_demostracion_museo.md)
* **Comparativa de Vanguardia (UGC & Restauración)**: [`marketing/comparativa_herramientas_ugc_y_restauracion.md`](marketing/comparativa_herramientas_ugc_y_restauracion.md)
* **Plantilla Tipográfica Typst (6 Capítulos)**: [`plantillas/libro_memorias.typ`](plantillas/libro_memorias.typ)
* **Motor Automatizado y Workflow n8n**: [`operaciones/motor_biografo.py`](operaciones/motor_biografo.py), [`operaciones/n8n_whatsapp_biografo.json`](operaciones/n8n_whatsapp_biografo.json) y [`.env.example`](.env.example)
* **Landing Page Pública y Configurador**: [`web/index.html`](web/index.html)

## 4. Guardarraíles y Privacidad
* **Retención Cero de Datos**: Los modelos LLM y de transcripción se invocan bajo API con retención cero y sin entrenamiento con datos del usuario.
* **Confidencialidad Estricta**: Los audios crudos de las familias se almacenan en carpetas locales encriptadas o se purgan a los 60 días tras la entrega del libro final.
