#set document(title: "Los Pasos de Antonio - Memorias Vivas", author: "Antonio González Morera")

// Configuración de página editorial (A5 / estándar novela de lujo)
#set page(
  paper: "a5",
  margin: (inside: 24mm, outside: 18mm, top: 22mm, bottom: 22mm),
  header: context {
    let p = counter(page).get().first()
    if p > 3 {
      align(center, text(size: 8.5pt, fill: luma(100), font: "Georgia", style: "italic")[
        Memorias Vivas · Antonio González Morera
      ])
    }
  },
  footer: context {
    let p = counter(page).get().first()
    if p > 3 {
      align(center, text(size: 9pt, font: "Georgia")[#p])
    }
  }
)

#set text(
  font: ("Georgia", "Times New Roman", "serif"),
  size: 10.5pt,
  lang: "es",
  spacing: 120%,
  fill: rgb("#1a1a1a")
)

#set par(justify: true, leading: 0.75em, first-line-indent: 1.5em)

// --- PORTADA INTERIOR ---
#align(center + horizon)[
  #text(size: 11pt, tracking: 0.25em, fill: rgb("#8a7336"), weight: "bold")[MEMORIAS VIVAS STUDIO]
  
  #v(2.5cm)
  
  #text(size: 26pt, font: "Georgia", weight: "bold", fill: rgb("#111827"))[LOS PASOS DE ANTONIO]
  
  #v(0.6cm)
  #text(size: 13pt, style: "italic", fill: luma(80))[Una vida de esfuerzo, amor y raíces]
  
  #v(3.5cm)
  
  #line(length: 4cm, stroke: 0.5pt + rgb("#8a7336"))
  
  #v(0.8cm)
  #text(size: 11pt, tracking: 0.15em)[ANTONIO GONZÁLEZ MORERA]
  
  #v(0.3cm)
  #text(size: 9pt, fill: luma(120))[Edición Familiar de Coleccionista · 2026]
]

#pagebreak()

// --- DEDICATORIA ---
#align(center + horizon)[
  #block(width: 80%)[
    #text(style: "italic", size: 11pt, fill: luma(60))[
      "A mis hijos Laura, Carlos y Miguel, y a mis nietos Lucía y Mateo.
      
      Para que cuando miréis hacia atrás sepáis de qué barro estáis hechos,
      cuántas risas costó levantar nuestra casa
      y cuánto amor os acompaña siempre en cada paso."
    ]
    
    #v(1.5cm)
    #align(right)[#text(size: 10pt, weight: "bold")[— Vuestro padre y abuelo, Antonio]]
  ]
]

#pagebreak()

// --- ÍNDICE ---
#v(1cm)
#text(size: 18pt, weight: "bold", fill: rgb("#111827"))[Índice de Capítulos]
#v(0.5cm)
#line(length: 100%, stroke: 0.5pt + luma(180))
#v(0.8cm)

#outline(title: none, indent: auto)

#pagebreak()

// --- CAPÍTULO I ---
= Capítulo I: La casa del arroyo y los veranos sin reloj

#v(0.4cm)
#block(
  fill: rgb("#faf7f0"),
  stroke: (left: 2pt + rgb("#8a7336")),
  inset: (x: 14pt, y: 10pt),
  radius: (right: 4pt)
)[
  #grid(
    columns: (1fr, auto),
    gutter: 12pt,
    align: (horizon, horizon),
    [
      #text(size: 8.5pt, weight: "bold", fill: rgb("#8a7336"))[🔊 ARCHIVO DE VOZ VIVA · GRABACIÓN ORIGINAL] \
      #text(size: 8pt, style: "italic", fill: luma(100))[Escanea el código para escuchar a Antonio narrando este recuerdo.]
    ],
    [
      #rect(width: 32pt, height: 32pt, stroke: 1pt + rgb("#8a7336"), fill: white)[
        #align(center + horizon)[#text(size: 6pt, weight: "bold")[QR AUDIO]]
      ]
    ]
  )
]

#v(0.6cm)

Si cierro los ojos todavía huelo a leña húmeda y a romero recién cortado. En aquella casa baja junto al recodo del arroyo no había reloj de pared; nos levantaba el cantar de los gallos del tío Julián y nos acostaba la penumbra, cuando mi madre soplaba el quinqué de aceite y la habitación se quedaba envuelta en ese silencio espeso de los pueblos de antes, donde la noche parecía pesar una tonelada.

Éramos cinco hermanos durmiendo en dos camas de hierro con jergón de borra. Cuando hacía frío en enero, nos apretábamos los unos contra los otros como cochinillos. No teníamos abrigos de pluma ni calefacción, pero jamás recuerdo haber pasado pena. Mi abuela Carmen, que tenía las manos ásperas como corteza de encina de tanto fregar con estropajo de esparto, nos calentaba un ladrillo en el rescoldo de la lumbre, lo envolvía en un trapo de franela viejo y nos lo metía a los pies de la cama. Aquello era mejor que cualquier hotel de cinco estrellas.

Los domingos eran otra cosa. El domingo olía a puchero desde las nueve de la mañana. Mi madre guardaba los recortes de tocino y un hueso de jamón rancio que parecía eterno, pero que sacaba un caldo dorado que resucitaba a un muerto. Mientras tanto, en la calle, los muchachos jugábamos al trompo o a la lima con un hierro afilado sobre la tierra blanda del ejido. No había coches, ni prisa, ni nadie que mirase el minutero. La hora de volver a casa la marcaba la voz de mi madre retumbando desde la cancela: *"¡Antonio, ven a lavarte las manos que la sopa se enfría!"*.

#v(1cm)

// --- CAPÍTULO II ---
= Capítulo II: El primer sueldo y aquel baile de San Juan

#v(0.4cm)
#block(
  fill: rgb("#faf7f0"),
  stroke: (left: 2pt + rgb("#8a7336")),
  inset: (x: 14pt, y: 10pt),
  radius: (right: 4pt)
)[
  #grid(
    columns: (1fr, auto),
    gutter: 12pt,
    align: (horizon, horizon),
    [
      #text(size: 8.5pt, weight: "bold", fill: rgb("#8a7336"))[🔊 ARCHIVO DE VOZ VIVA · GRABACIÓN ORIGINAL] \
      #text(size: 8pt, style: "italic", fill: luma(100))[Escanea el código para escuchar a Antonio narrando el día que conoció a Carmen.]
    ],
    [
      #rect(width: 32pt, height: 32pt, stroke: 1pt + rgb("#8a7336"), fill: white)[
        #align(center + horizon)[#text(size: 6pt, weight: "bold")[QR AUDIO]]
      ]
    ]
  )
]

#v(0.6cm)

Cumplí los catorce años un martes y el miércoles a las siete de la mañana ya estaba entrando por la cancela del taller de cerrajería de don Manuel. Mi cometido era barrer la limadura de hierro, engrasar los taladros de columna y llevar los recados en una bicicleta con una cesta de mimbre soldada al manillar. Al acabar mi primer mes, don Manuel me entregó un sobre marrón con trescientas pesetas en billetes verdes arrugados.

Me fui corriendo a casa con el sobre apretado en el puño dentro del bolsillo para que nadie me lo quitara. Al llegar a la cocina, puse doscientas cincuenta pesetas sobre el hule de la mesa, delante de mi madre. Ella me miró, no dijo una palabra, pero se le llenaron los ojos de agua y me pasó la mano por la nuca. Con las cincuenta pesetas que me quedaban me compré mi primera camisa de tergal con cuello italiano y unos mocasines de suela de cuero.

Esa camisa la estrené en la verbena de San Juan de 1968. Y bendita la hora, porque allí, junto al puesto de los higos pasos, estaba tu madre con un vestido amarillo con lunares blancos que parecía iluminar la plaza entera...

#v(1.5cm)
#align(center)[
  #line(length: 3cm, stroke: 0.5pt + luma(160))
  #v(0.2cm)
  #text(size: 8.5pt, style: "italic", fill: luma(120))[Continúa en el volumen encuadernado de Memorias Vivas Studio]
]
