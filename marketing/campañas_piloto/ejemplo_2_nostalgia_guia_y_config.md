# Ejemplo 2: "El Despertador Filial / La Juventud de Nuestros Padres" (`ejemplo_2_nostalgia_guia_y_config.md`)

Este vídeo está diseñado para ejecutarse automáticamente en **MoneyPrinterTurbo (`http://127.0.0.1:8501`)** o montarse en 5 minutos en cualquier editor con fotos de banco de imágenes.

---

## 1. Ficha Técnica del Vídeo
* **Formato**: Vertical 9:16 (1080x1920) para TikTok, Instagram Reels y YouTube Shorts.
* **Duración**: 32 segundos.
* **Tono de Voz**: Reflexivo, cálido, cómplice y nostálgico.
* **Voz TTS Recomendada (Edge-TTS)**: `es-ES-AlvaroNeural` (voz masculina templada y profunda) o `es-ES-ElviraNeural` (voz femenina madura y cercana).
* **Música de Fondo (BGM)**: Piano suave melancólico a 60 BPM (estilo Yann Tiersen / Einaudi), volumen al 15%.

---

## 2. El Guion Literal (Locución y Tomas)

```text
[00:00 - 00:06] (Foto 1: Manos sosteniendo una foto antigua en blanco y negro)
¿Sabrías decirme cómo se llamaba el primer amor de tu padre... o a qué jugaba tu madre en la calle cuando tenía ocho años?

[00:06 - 00:14] (Foto 2: Niños jugando en una calle de pueblo de los años 50/60)
Nos sabemos de memoria las series de Netflix y la vida de gente que no conocemos. Pero la juventud de las personas que nos dieron la vida sigue siendo un misterio.

[00:14 - 00:22] (Foto 3: Pareja joven de época sonriendo en un baile o feria)
Y el tiempo no perdona. Un día te das cuenta de que hay preguntas que ya nadie te podrá responder.

[00:22 - 00:32] (Foto 4 y 5: Libro encuadernado de tapa dura sobre mesa de madera + QR en la página)
En Memorias Vivas Studio convertimos sus historias contadas por WhatsApp en un libro encuadernado de lujo con su voz viva. Antes de que sea tarde, haz clic en el enlace.
```

---

## 3. Cómo Generarlo en MoneyPrinterTurbo (`http://127.0.0.1:8501`)

1. Abre la interfaz web de **MoneyPrinterTurbo** en tu navegador:
   👉 `http://127.0.0.1:8501`
2. Configuración en el panel:
   * **Video Subject / Título**: *El secreto de la vida de tus padres*
   * **Video Script / Guion**: Pega el texto literal del punto 2 anterior.
   * **Video Aspect Ratio**: `9:16 (Vertical)`
   * **Voice Name**: Selecciona `es-ES-AlvaroNeural` (o `es-ES-ElviraNeural`).
   * **BGM (Música de fondo)**: Selecciona una pista melancólica / clásica de la biblioteca integrada o sube un archivo `.mp3` de piano suave.
   * **Subtítulos**: Activar subtítulos dinámicos palabra por palabra con fuente grande centrada abajo.
   * **Material Source (Vídeo/Foto)**: 
     * Puedes dejar que busque automáticamente en Pexels con el término `vintage old photos`.
     * O mejor aún: sube las 4 fotos descargadas de Unsplash a la carpeta de recursos para un control estético total.
3. Pulsa **"Generate Video"** (tarda entre 60 y 90 segundos).
4. El `.mp4` resultante está listo para subir a **Postiz (`:4200`)** y programar su difusión simultánea.
