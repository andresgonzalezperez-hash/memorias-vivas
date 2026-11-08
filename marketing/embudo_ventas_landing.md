# Arquitectura del Embudo de Ventas y Publicación Automatizada: Memorias Vivas Studio (`embudo_ventas_landing.md`)

## 1. El Embudo Extremo a Extremo (Full-Funnel Blueprint)

```
[ POSTIZ :4200 / MONEYPRINTERTURBO :8501 ] ──> Publicación Multicanal (TikTok, IG Reels, FB, YouTube Shorts)
                                                            │
                                                            ▼ (Tráfico Orgánico & Paid Ads)
                                              [ LANDING PAGE DE ALTA CONVERSIÓN ]
                                              • Vídeo de reacción (Proof)
                                              • Selector de Colecciones
                                              • Botón flotante WhatsApp Asesor
                                                            │
                                                            ▼
                                              [ CHECKOUT STRIPE + KLARNA ]
                                              • Pago único o 3 cuotas sin intereses
                                              • Apple Pay / Google Pay con 1 clic
                                                            │
                                                            ▼ (Webhook de Pago)
                                              [ n8n ORQUESTADOR :5678 ]
                                              ├─► Crea carpeta del cliente en almacenamiento
                                              ├─► Envía WhatsApp automático de bienvenida al hijo/a
                                              ├─► Genera orden de envío del Cofre de Bienvenida
                                              └─► Inicia el calendario de entrevistas de 6 semanas
```

---

## 2. Estructura de la Landing Page de Alta Conversión (Mobile-First)

El 88% del tráfico proveniente de Reels y TikTok navega desde el teléfono móvil. La landing debe cargar en menos de 1,2 segundos y eliminar cualquier menú de distracción:

1. **Above the Fold (Pantalla de Inicio)**:
   * Titular emocional: *"El libro de su vida, contado por su propia voz."*
   * Subtítulo: *"6 semanas de conversaciones por WhatsApp o teléfono que convertimos en una joya editorial encuadernada en tela con sus fotos restauradas y códigos QR con su voz viva."*
   * Vídeo embebido en bucle vertical (sin sonido inicial, con subtítulos dinámicos grandes): El abuelo abriendo la caja emocionado.
   * Botón de Acción Principal (*CTA*): **[ Ver Colecciones y Precios ]** (anclaje suave hacia abajo) o **[ Hablar con un Asesor por WhatsApp ]**.
2. **Prueba Social Inmediata**:
   * Franja con opiniones verificadas de hijos: *"Se lo regalamos a mi padre por sus 80 años entre los tres hermanos. No ha habido un regalo en la familia que nos haya hecho llorar tanto a todos."* — Laura M., Madrid.
3. **El Escaparate Interactivo (Cómo Funciona en 3 Pasos)**:
   * *1. Le enviamos el Cofre de Bienvenida a su casa.*
   * *2. Charlamos con él por teléfono o notas de voz (Cero ordenadores).*
   * *3. Recibís los libros encuadernados de lujo con su voz viva.*
4. **La Tabla de Precios con Opción Fraccionada**:
   * Selector claro entre **Pack Esencial (490 €)** y **Pack Linaje (790 € o 3 cuotas de 263 €)**.
   * Destacado con badge dorado en la Colección Linaje (*"La elección de las familias con varios hermanos"*).
5. **Garantía y Blindaje de Tranquilidad**:
   * *"Si tras la primera semana de entrevistas tu padre no se siente cómodo, te devolvemos el 100% de tu dinero sin preguntas."* (Riesgo percibido = cero).
6. **Preguntas Frecuentes Desplegables**:
   * *¿Qué pasa si mis padres viven en otra ciudad?* (Enviamos el cofre a su casa y los libros a las direcciones de cada hermano).
   * *¿Se pueden añadir más copias luego?* (Sí, a solo 45 € por libro).

---

## 3. Integración con el Homelab de Producción

Aprovechando la infraestructura ya instalada y activa en el homelab:

* **Postiz (`http://127.0.0.1:4200`)**:
  * Programador multicanal centralizado: Se cargan los 3 vídeos virales por semana y Postiz los publica simultáneamente a la mejor hora en **TikTok**, **Instagram Reels**, **Facebook** y **YouTube Shorts**.
* **MoneyPrinterTurbo (`http://127.0.0.1:8501`)**:
  * Factoría de generación rápida de cortes de vídeo con subtítulos automáticos animados palabra por palabra y efectos Ken Burns sobre fotos históricas de archivo.
* **n8n (`http://127.0.0.1:5678`)**:
  * Receptor de los webhooks de Stripe.
  * Disparador automático del mensaje de bienvenida por la API de WhatsApp Business:
    > *"¡Hola Laura! Enhorabuena por haber reservado el libro de tu padre. Soy Carmen, vuestra coordinadora en Memorias Vivas. Acabamos de despachar el Cofre de Bienvenida hacia la dirección de tus padres. ¿Cómo te gustaría que nos dirijamos a él en la carta: Don Antonio o simplemente Antonio?"*
