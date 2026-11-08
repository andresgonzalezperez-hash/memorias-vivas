# Directorio de Proveedores Reales y Cadena de Suministro: Memorias Vivas Studio (`directorio_proveedores_reales.md`)

## 1. La Realidad Industrial: ¿Cómo se fabrica un libro unitario o de 3 copias?
En la industria gráfica tradicional, la tapa dura con tela de lino cosida y estampación de oro en caliente suele exigir tiradas mínimas de 50 o 100 ejemplares para amortizar el cliché metálico de estampación.

Sin embargo, para un negocio de **alto ticket (490 € - 790 €)** con tiradas de **1 a 5 ejemplares**, existen **3 VÍAS REALES Y OPERATIVAS EN ESPAÑA**:

---

## 2. Las 3 Opciones Reales de Fabricación del Libro

### VÍA A: El Modelo Taller Artesanal Local (La Joya de Máxima Calidad) — *RECOMENDADA PARA LANZAMIENTO*
* **Cómo funciona**: Separamos la impresión del papel de la encuadernación de lujo.
  1. **Paso 1 (Impresión del bloque interior / tripa)**: Se imprime el PDF generado por Typst (120–150 págs a doble cara en papel ahuesado Munken Print 100g o verjurado, con fotos a color) en una **imprenta digital o copistería profesional local** (o vía online en *Pixartprinting* / *La Imprenta CG*). Coste: **8,00 € a 12,00 €**.
  2. **Paso 2 (Encuadernación en taller)**: Se entregan las hojas impresas a un **Taller de Encuadernación Artística y Artesanal** (hay al menos 2 o 3 talleres en cualquier capital de provincia española).
  3. **El Acabado**: El maestro encuadernador elabora la tapa dura con cartón de 2 mm forrado a mano con **tela de lino natural o tela editorial Balacron/Guaflex**, cose las cabezadas de tela en el lomo, añade guardas decoradas y estampa el título en oro mediante **tipos de plomo móviles en calor seco (sin necesidad de fabricar un cliché caro)**.
* **Coste del encuadernador**: **22,00 € a 32,00 €** por ejemplar.
* **Coste Total por Libro**: **~32,00 € a 44,00 €**.
* **Plazo de entrega**: 3 a 5 días laborables.
* **Percepción del cliente**: Calidad insuperable, tacto de libro centenario, olor a tela y cola vegetal. Justifica cobrar 790 € con los ojos cerrados.

---

### VÍA B: Imprentas Digitales Bajo Demanda (POD 100% Automatizado desde 1 unidad)
Ideal si quieres cero interacción física y envío directo a tu taller o al cliente.

1. **Lulu.com / Lulu Direct (`lulu.com`)**:
   * *Producto exacto*: **Hardcover Cloth / Linen with Foil Stamping on Spine + Dust Jacket** (Tapa dura de lino auténtico con sobrecubierta a todo color y estampación dorada en lomo).
   * *Tirada mínima*: **1 solo ejemplar**.
   * *Coste*: ~**22,00 € a 28,00 €** por libro (150 págs, tamaño A5 / Crown Quarto).
   * *Plazo*: 6 a 9 días laborables (imprimen en centros de la UE y envían con tracking a España).
2. **Print24 España (`print24.com/es/`)**:
   * *Producto exacto*: **Libros en Tapa Dura Digital con Acabado Toque de Lino (*Linen Finish*)**. Es un plastificado texturizado rígido que imita el tramado textil con gran realismo, combinable con estampación digital metalizada oro.
   * *Tirada mínima*: **1 ejemplar**.
   * *Coste*: ~**24,00 € a 30,00 €**.
   * *Plazo*: 4 a 6 días laborables.
3. **BoD España (`bod.com.es`)**:
   * *Producto exacto*: Tapa dura cosida/fresada en papel ahuesado de 90g/120g. Tapa dura rígida clásica al cromo plastificado mate aterciopelado.
   * *Tirada mínima*: **1 ejemplar**.
   * *Coste*: ~**16,00 € a 21,00 €**.
   * *Plazo*: 5 a 8 días laborables.

---

### VÍA C: Imprentas Industriales Premium para Lotes de Hermanos (3 a 5 libros)
Cuando el cliente contrata la **Colección Linaje (3 libros)** o **Bóveda (5 libros)**:

1. **La Imprenta CG (`laimprentacg.com` - Valencia)**:
   * La imprenta online de referencia en España para libros de arte y fotografía.
   * Tapa dura cosida con hilo vegetal auténtico, lomo redondo o plano, cabezadas de tela, papeles Munken Lynx / Arena Fedrigoni de altísima gama.
   * *Tirada*: A partir de 10 ejemplares sale a ~**14,00 €/unidad** (puedes acumular 2 pedidos familiares de 3 libros y pedir 10 libros).
2. **Cevagraf Cooperativa Gráfica (`cevagraf.coop` - Barcelona)**:
   * Expertos en tiradas cortas editoriales. Presupuestador online instantáneo con opciones de stamping oro digital y tapa dura cosida.

---

## 3. Proveedores del Resto de la Cadena de Suministro

### A. Cofres de Bienvenida y Cajas de Regalo de Lujo
* **SelfPackaging (`selfpackaging.es`)**:
  * Especialistas en packaging rígido automontable o forrado.
  * Cajas para libros y estuches de presentación en cartón kraft oscuro, negro o crema.
  * *Coste*: **2,80 € a 4,50 €** la unidad en pedidos pequeños (packs de 10 a 25 uds).
* **Cajas Magnéticas de Lujo (Amazon Business / B2B)**:
  * Cajas rígidas con cierre magnético y lazo de raso (medida 24x18x4 cm).
  * *Coste*: **4,50 € a 6,00 €/unidad**.

### B. Alojamiento Privado de los Códigos QR de Audio
* **Almacenamiento**: **Cloudflare R2** o **AWS S3**.
  * Se suben los archivos `.mp3` limpiados (ej: `antonio-recuerdo-boda.mp3`).
  * Cloudflare R2 no cobra por ancho de banda (coste: **0,00 €/mes**).
* **Reproductor Web**: Subdominio privado `audio.memoriasvivas.es/<id_familia>/capitulo-1` con reproductor HTML5 limpio, foto del protagonista y botón de descarga.
* **Generación de QRs**: Generados directamente con la librería Python `qrcode` e insertados automáticamente en el Typst antes de compilar.

### C. Logística y Envíos Asegurados a Domicilio
* **Plataforma de Contratación**: **Packlink PRO** (`pro.packlink.es`) o **Genei** (`genei.es`).
* **Transportistas recomendados en España**:
  * **Correos Express (Paq 24h)**: Máxima efectividad en domicilios particulares de personas mayores.
  * **GLS / SEUR**: Envíos asegurados con entrega bajo firma.
* **Coste medio nacional**: **5,50 € a 7,20 €** por paquete de hasta 2 kg con número de seguimiento SMS para los hijos.

---

## 4. Hoja de Ruta Operativa Recomendada para el Primer Cliente (Piloto):
1. **Día 1**: Comprar un pack de 3 cajas magnéticas en Amazon/SelfPackaging para el Cofre de Bienvenida (~15 €).
2. **Semanas 1–6**: Capturar audios y compilar el texto con el script Typst `plantillas/compilar_muestra.py`.
3. **Semana 7**: 
   * Si quieres inmediatez digital: Subir el PDF interior y portada a **Lulu.com** o **Print24** (opción tela/linen).
   * Si quieres excelencia de lujo: Imprimir el interior en una copistería técnica local en papel Munken 100g (10 €) y llevarlo al **taller de encuadernación artesanal más cercano** para que lo vistan en tela con letras de oro (28 €).
4. **Semana 8**: Colocar el libro en la caja magnética con viruta y cinta de raso, y enviar por Correos Express asegurado.
