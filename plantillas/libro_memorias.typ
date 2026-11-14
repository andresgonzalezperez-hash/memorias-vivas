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

// Helper para caja de archivo de voz viva con código QR y duración
#let bloque_qr(descripcion, codigo_qr, duracion) = {
  v(0.4cm)
  block(
    fill: rgb("#faf7f0"),
    stroke: (left: 2pt + rgb("#8a7336")),
    inset: (x: 14pt, y: 10pt),
    radius: (right: 4pt),
    breakable: false
  )[
    #grid(
      columns: (1fr, auto),
      gutter: 12pt,
      align: (horizon, horizon),
      [
        #text(size: 8.5pt, weight: "bold", fill: rgb("#8a7336"))[🔊 ARCHIVO DE VOZ VIVA · GRABACIÓN ORIGINAL (#duracion)] \
        #text(size: 8pt, style: "italic", fill: luma(90))[#descripcion] \
        #text(size: 7pt, fill: luma(130))[ID de custodia permanente: #codigo_qr]
      ],
      [
        #rect(width: 36pt, height: 36pt, stroke: 1pt + rgb("#8a7336"), fill: white)[
          #align(center + horizon)[
            #text(size: 5.5pt, weight: "bold", fill: rgb("#1a1a1a"))[QR VOZ \ #codigo_qr]
          ]
        ]
      ]
    )
  ]
  v(0.6cm)
}

// --- PORTADA INTERIOR ---
#align(center + horizon)[
  #text(size: 11pt, tracking: 0.25em, fill: rgb("#8a7336"), weight: "bold")[MEMORIAS VIVAS STUDIO]
  
  #v(2.5cm)
  
  #text(size: 26pt, font: "Georgia", weight: "bold", fill: rgb("#111827"))[LOS PASOS DE ANTONIO]
  
  #v(0.6cm)
  #text(size: 13pt, style: "italic", fill: luma(80))[Una vida de esfuerzo, amor y raíces (1942–2026)]
  
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
  #block(width: 82%)[
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

#bloque_qr(
  "Escanea el código para escuchar a Antonio narrando los inviernos junto al brasero y la voz de su madre.",
  "MV-01",
  "03:42"
)

Si cierro los ojos todavía huelo a leña húmeda y a romero recién cortado. En aquella casa baja junto al recodo del arroyo no había reloj de pared; nos levantaba el cantar de los gallos del tío Julián y nos acostaba la penumbra, cuando mi madre soplaba el quinqué de aceite y la habitación se quedaba envuelta en ese silencio espeso de los pueblos de antes, donde la noche parecía pesar una tonelada.

Éramos cinco hermanos durmiendo en dos camas de hierro con jergón de borra. Cuando hacía frío en enero, nos apretábamos los unos contra los otros como cochinillos. No teníamos abrigos de pluma ni calefacción, pero jamás recuerdo haber pasado pena. Mi abuela Carmen, que tenía las manos ásperas como corteza de encina de tanto fregar con estropajo de esparto, nos calentaba un ladrillo en el rescoldo de la lumbre, lo envolvía en un trapo de franela viejo y nos lo metía a los pies de la cama. Aquello era mejor que cualquier hotel de cinco estrellas.

Los domingos eran otra cosa. El domingo olía a puchero desde las nueve de la mañana. Mi madre guardaba los recortes de tocino y un hueso de jamón rancio que parecía eterno, pero que sacaba un caldo dorado que resucitaba a un muerto. Mientras tanto, en la calle, los muchachos jugábamos al trompo o a la lima con un hierro afilado sobre la tierra blanda del ejido. No había coches, ni prisa, ni nadie que mirase el minutero. La hora de volver a casa la marcaba la voz de mi madre retumbando desde la cancela: _«¡Antonio, ven a lavarte las manos que la sopa se enfría!»_.

A la escuela íbamos en fila por la vereda de piedra con una cartera de cartón colgando del hombro y los dedos amoratados de sabañones. Nuestro maestro, don Gregorio, llevaba siempre un guardapolvo gris impecable con dos tizas blancas en el bolsillo derecho. Era severo, sí, pero cuando veía que alguno traía la cara triste porque en casa faltaba el jornal, se sacaba del maletín un trozo de pan con chocolate y te lo ponía en el pupitre sin hacer ruido para que no pasaras vergüenza delante de los demás. De él aprendí que la buena caligrafía empieza por respetar a quien te escucha.

#pagebreak()

// --- CAPÍTULO II ---
= Capítulo II: El primer sueldo y aquel baile de San Juan

#bloque_qr(
  "Escanea el código para escuchar a Antonio recordar las trescientas pesetas y el vestido amarillo de Carmen.",
  "MV-02",
  "04:18"
)

Cumplí los catorce años un martes y el miércoles a las siete de la mañana ya estaba entrando por la cancela del taller de cerrajería de don Manuel. Mi cometido era barrer la limadura de hierro, engrasar los taladros de columna y llevar los recados en una bicicleta con una cesta de mimbre soldada al manillar. El taller olía a aceite quemado y a chispa de radial, y uno llegaba a casa con las uñas negras por mucho jabón Lagarto que se echase en el pilón. Al acabar mi primer mes, don Manuel me entregó un sobre marrón con trescientas pesetas en billetes verdes arrugados.

Me fui corriendo a casa con el sobre apretado en el puño dentro del bolsillo para que nadie me lo quitara. Al llegar a la cocina, puse doscientas cincuenta pesetas sobre el hule de la mesa, delante de mi madre. Ella me miró, no dijo una palabra, pero se le llenaron los ojos de agua y me pasó la mano por la nuca. Con las cincuenta pesetas que me quedaban me compré mi primera camisa de tergal con cuello italiano y unos mocasines de suela de cuero en los almacenes de la plaza.

Esa camisa la estrené en la verbena de San Juan de 1968, cuando la orquesta afinaba los pasodobles bajo las guirnaldas de bombillas de colores. Y bendita la hora, porque allí, junto al puesto de los higos pasos y las almendras garrapiñadas, estaba Carmen con un vestido amarillo con lunares blancos que parecía iluminar la plaza entera. Tardé tres canciones enteras en reunir el valor para cruzar la pista de tierra batida. Cuando por fin le pedí aquel baile, sus amigas soltaron una risita disimulada, pero ella me tendió la mano con una seguridad que me dejó temblando.

Durante dos años fuimos novios de pasear por la alameda con su hermana pequeña haciendo de carabina tres pasos por detrás, mirando de reojo la esfera del reloj para llegar siempre antes de las nueve y media a su portal. Cuando me tocó marchar dieciocho meses al servicio militar con la maleta de madera atada con una cuerda de esparto, nos escribíamos cada martes y cada viernes en papel de avión azul. Guardé todas aquellas cartas atadas con una cinta verde en el fondo del baúl, porque en cada sobre llegaba el olor de nuestra tierra y la promesa de una vida juntos.

#pagebreak()

// --- CAPÍTULO III ---
= Capítulo III: Cuatro paredes propias y el llanto que cambió nuestra vida

#bloque_qr(
  "Escanea el código para escuchar la emoción de Antonio al recordar el nacimiento de sus tres hijos.",
  "MV-03",
  "05:05"
)

Cuando nos casamos, nuestra fortuna cabía en dos maletas y una cartilla de ahorros con tres mil pesetas. Entramos en aquel piso tercero sin ascensor de cincuenta metros cuadrados en el barrio nuevo, donde las paredes aún olían a cal fresca y el primer invierno solo teníamos una mesa camilla, dos sillas de enea y un colchón en el suelo mientras terminábamos de pagar las letras de la alcoba. Pero al cerrar la puerta por dentro y apoyar la espalda contra la madera, Carmen y yo nos miramos y nos echamos a reír como niños ricos: aquellas cuatro paredes eran nuestro reino.

El mundo cambió de golpe la madrugada del 14 de noviembre de 1971. Me pasé seis horas paseando por el pasillo de baldosa blanca del hospital, fumando sin encender el cigarrillo y escuchando cada paso de las enfermeras. Cuando la matrona asomó la cabeza y me dijo que había nacido una niña sana, se me doblaron las rodillas. Al ponerme a Laura en brazos, tan menuda que cabía en un palmo, sentí un miedo sagrado y una fuerza desconocida a la vez. Luego llegarían Carlos, inquieto y preguntón desde que aprendió a gatear, y el pequeño Miguel, que nos llenó la casa de balones y rodillas raspadas.

No todo fueron rosas. En la crisis de finales de los setenta el trabajo en el taller escaseó y hubo meses en los que nos sentábamos Carmen y yo por la noche en la mesa de la cocina, con la lamparita encendida cuando los tres niños ya dormían, a cuadrar los recibos en la parte de atrás de un sobre viejo. Hice horas extra los sábados montando rejas en las obras y Carmen cosía arreglos para las vecinas hasta pasada la medianoche, pero nuestra ley secreta era sagrada: que a la hora de la cena los niños solo escuchasen risas y no supieran nunca cuánto costaba llenar la despensa.

Y qué alegría aquellos agostos en los que cargábamos el Seat 127 hasta el techo con la baca atada con pulpos elásticos, dos sandías envueltas en papel de periódico bajo el asiento y una tartera de tortilla de patatas con pimientos fritos. Salíamos a las cinco de la mañana para evitar el solazo de Castilla, cantando a coro por las curvas de la nacional mientras Laura se dormía con la cabeza apoyada en el hombro de Carlos. Nunca necesitamos viajar en avión para sentirnos dueños del verano.

#pagebreak()

// --- CAPÍTULO IV ---
= Capítulo IV: La huerta de los domingos, la partida de mus y el puchero de Carmen

#bloque_qr(
  "Escanea el código para escuchar a Antonio contando las partidas de mus y cómo superaron el año 1998.",
  "MV-04",
  "04:12"
)

Uno no camina solo por la vida sin una buena cuadrilla de amigos que te sostenga cuando sopla el cierzo. En el bar de Paco nos juntábamos cada viernes a las siete Pepe el fontanero, Manolo el del estanco y Julián. Cuarenta años echando la misma partida de mus con los mismos chistes mal contados, discutiendo a voces por un órdago a la chica para acabar abrazándonos en la barra pagando por turnos la ronda de chatos y aceitunas partidas. Esos amigos vieron crecer a nuestros hijos como si fueran sobrinos suyos.

Mi otro refugio fue siempre el pequeño huerto que alquilé junto al camino viejo cuando me jubilé del taller. Quien no ha metido las manos en tierra húmeda al amanecer no sabe lo que descansa la cabeza. Plantar los tomates en abril, atarlos con cañas y ver en agosto cómo cuajan racimos rojos que huelen a campo verdadero me devolvía el pulso de mi infancia. Cada domingo bajaba a casa con una cesta de tomates, calabacines y albahaca fresca, mientras Carmen ya tenía en el fuego su legendario arroz caldoso con conejo y romero cuyo secreto, según juraba ella entre risas, consistía en no tener prisa en el sofrito y añadir el azafrán tostado en el último hervor.

También tuvimos que capear nuestra gran tormenta en la primavera de 1998, cuando aquel susto del corazón me llevó quince días ingresado en la planta cuarta. Recuerdo despertar de la operación con la boca seca y ver la mano de Carmen entrelazada con la mía, sin haber dormido en tres noches, y a mis tres hijos apretados en el pasillo esperando el parte médico. Aquel miedo nos enseñó una lección que ya no olvidamos jamás: que las discusiones tontas no merecen ni cinco minutos de vida y que el único patrimonio verdadero que uno acumula son las personas que no te sueltan la mano cuando se apagan las luces del quirófano.

#pagebreak()

// --- CAPÍTULO V ---
= Capítulo V: Las manos pequeñas de Lucía y Mateo

#bloque_qr(
  "Escanea el código para escuchar a Antonio hablar de sus nietos Lucía y Mateo.",
  "MV-05",
  "03:54"
)

Dicen que uno quiere a los hijos con toda el alma y con todo el peso de la responsabilidad, pero cuando te ponen a un nieto en los brazos es como si la vida te regalara una segunda primavera sin reloj ni preocupaciones. El día que nació Lucía me quedé mirando sus deditos diminutos agarrando mi pulgar lleno de cicatrices del taller y pensé que todo el cansancio de sesenta años había quedado pagado de golpe en ese segundo. Luego llegó Mateo con su flequillo rebelde y sus preguntas interminables sobre cómo funcionaban los trenes antiguos.

Confieso aquí, ya que nadie nos oye y sus padres no pueden regañarme en estas páginas, que en casa de los abuelos siempre ha existido una ley distinta. Todos los domingos por la mañana, cuando vienen a comer, espero a que Laura o Carlos entren en la cocina para deslizar en el bolsillo de Lucía y de Mateo un billete doblado y una bolsa de rosquillas de anís con el guiño de nuestro pacto secreto: _«Esto para vuestros ahorros, pero que no se entere mamá»_. Ellos se ríen tapándose la boca con las manos y a mí me ensancha el pecho esa complicidad limpia.

A veces me quedo en silencio sentado en el sillón del salón observando cómo gesticula Carlos cuando explica una obra en su trabajo, idéntico a como movía yo los brazos en la cerrajería, o cómo frunce Lucía el ceño cuando dibuja concentrada, igual que Carmen cuando enhebraba una aguja. Ver que Laura ha salido tan valiente y protectora, y que Miguel conserva esa nobleza tranquila para ayudar a todo el que se le acerca, es la medalla más grande que un padre puede colgarse sin haber pisado nunca un podio.

#pagebreak()

// --- CAPÍTULO VI ---
= Capítulo VI: Carta abierta para cuando yo sea recuerdo

#bloque_qr(
  "MENSAJE MAESTRO DE VOZ VIVA: Grabación íntegra de despedida y bendición de Antonio para sus hijos, nietos y bisnietos.",
  "MV-06",
  "05:30"
)

Si pudiera retroceder sesenta años y sentarme cinco minutos en el banco de piedra de la plaza junto a aquel muchacho de dieciocho años que era yo —con la camisa remangada, las botas polvorientas y mil dudas sobre si sería capaz de sacar adelante una familia—, le pondría una mano en el hombro y le diría al oído: _«No tengas miedo, chaval. Trabaja con honradez, cuida a Carmen como al mayor tesoro de la tierra y no sufras tanto por el mañana, que al final casi todas las tormentas pasan»_. Con sus luces y sus cicatrices, volvería a caminar exactamente por las mismas piedras.

Todo lo bueno que he sido se lo debo primero a mis padres, que nos enseñaron la dignidad en medio de la escasez, y después a tu madre, Carmen, que ha sido la columna invisible de nuestra casa durante más de medio siglo. El secreto para caminar tantos años de la mano no es no discutir nunca; el secreto es no irse a dormir enfadados, saber pedir perdón rápido cuando uno se equivoca y cuidar los gestos pequeños de cada día como quien riega una maceta en el balcón.

Hijos míos —Laura, Carlos y Miguel—: gracias por haberme regalado este libro y por haberme escuchado contar mi vida sin prisas. Quiero que estéis en paz. Todo lo que hicimos vuestra madre y yo no fue un sacrificio pesado, sino el mayor privilegio de nuestra existencia. Seguid queriéndoos, sentaos juntos alrededor de una mesa larga aunque no sea Navidad, y nunca dejéis que las prisas del mundo moderno os enfríen la casa.

Y tú, bisnieto o bisnieta que quizás abras estas páginas dentro de cincuenta años, cuando yo ya solo sea una fotografía sepia y una voz guardada en este código cuadrado: no olvides de dónde vienes. Busca siempre trabajos que te permitan mirar a la gente a los ojos, ten paciencia con los que amas, disfruta del olor a pan recién hecho y de la buena compañía, y vive de tal manera que cuando mires atrás puedas sonreír tranquilo sabiendo que dejaste el mundo un poco más cálido de como lo encontraste.

#v(1.6cm)
#align(center)[
  #line(length: 4cm, stroke: 0.6pt + rgb("#8a7336"))
  #v(0.5cm)
  #text(size: 10pt, weight: "bold", fill: rgb("#111827"))[COLOFÓN EDITORIAL]
  #v(0.25cm)
  #text(size: 8.5pt, style: "italic", fill: luma(100))[
    Este volumen de *Memorias Vivas Studio* ha sido recogido íntegramente de la voz original de Antonio González Morera a lo largo de seis semanas de entrevistas biográficas, editado con respeto absoluto a su léxico familiar y compuesto en tipografía clásica Georgia sobre papel estucado ahuesado de 120 gramos.
    \ \
    Primera Edición de Coleccionista · 2026
  ]
]
