# Especificación Funcional y de Negocio: Memorias Vivas Studio (`spec.md`)

## 1. Visión y Objetivo
**Memorias Vivas Studio** nace para resolver el dolor del olvido familiar y la soledad de la generación sénior (+70 años). Proporciona un servicio integral de biografía familiar asistida por IA donde los mayores narran sus vidas de forma natural por voz (teléfono o WhatsApp), y sus hijos reciben un libro encuadernado de coleccionista con su historia, fotos restauradas y códigos QR con su voz real.

## 2. El Problema que Resuelve
* **Para los hijos (40–55 años)**: Sienten una deuda emocional y prisa al ver envejecer a sus padres. Desean preservar su voz y sus vivencias, pero no tienen tiempo, paciencia ni método para sentarse 20 horas a entrevistarlos y escribir un libro.
* **Para los mayores (70–85 años)**: Tienen la necesidad profunda de ser escuchados y dejar un legado, pero sufren una brecha tecnológica insalvable frente a ordenadores, teclados o aplicaciones complejas.

## 3. Alcance (In Scope)
* **Canal Cero Fricción**: Captura de testimonios orales exclusivamente por teléfono tradicional o notas de voz guiadas en WhatsApp.
* **Guion Maestro de Vida**: Metodología de 6 semanas con preguntas temáticas (infancia, juventud, amores, trabajo, familia, reflexiones).
* **Pipeline de IA Invisible**:
  * Transcripción fonética avanzada y diarización respetando modismos locales.
  * Reescritura literaria en primera persona que preserva el tono, cadencia y alma del protagonista, eliminando vacilaciones y muletillas.
  * Restauración fotográfica (CodeFormer / GFPGAN) de hasta 35 fotos familiares antiguas.
* **Producto Físico Premium**: Libro encuadernado en tapa dura (17x24 cm), 120–160 páginas, papel ahuesado de 120g, fotos en papel estucado y códigos QR con streaming de audio de fragmentos originales.
* **Modelo Comercial de Alto Ticket**:
  * *Edición Esencial* (1 libro tapa dura, 6 capítulos, 15 fotos): **490 €**.
  * *Edición Linaje* (3 libros para hermanos, cofre entelado, 8 capítulos, 35 fotos, QR de voz viva): **790 €**.
  * Copias adicionales bajo demanda a **45 €/unidad**.

## 4. Fuera de Alcance (Out of Scope)
* **Plataformas de Redes Sociales Públicas**: Este servicio es 100% privado e íntimo para la familia.
* **Software auto-servicio complejo**: No se le entrega al cliente final un editor web de libros para que él haga el trabajo; es un servicio "White Glove" llave en mano.

## 5. Criterios de Aceptación
1. **Dossier Comercial y Pitch Deck Completado**: Documento visual interactivo y legible que presente la propuesta de valor, los paquetes, el escandallo y testimonios hipotéticos.
2. **Guion de Entrevistas Validado**: Batería completa de 6 bloques temáticos lista para enviar por WhatsApp o leer por teléfono.
3. **Diagrama de Procesos Operativos (Archify)**: Diagrama interactivo que mapee el flujo de extremo a extremo (cliente, operador, pipeline de IA, imprenta).
4. **Plantilla Editorial Typst Compilada**: Generación comprobada de un PDF de libro de muestra con portada, índice, maquetación a doble página y bloque de audio con QR.
5. **Modelo Financiero y Legal**: Escandallo de costes con margen bruto superior al 80% y contrato de protección de datos y voz.
