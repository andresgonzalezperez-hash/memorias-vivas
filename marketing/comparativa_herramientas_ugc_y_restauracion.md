# Análisis Comparativo de Vanguardia: UGC para Redes y Retoque Fotográfico (`comparativa_herramientas_ugc_y_restauracion.md`)

> **Hallazgo Crítico**: En la industria actual existen dos filosofías radicalmente opuestas: **Fidelidad Documental** (proteger la identidad real) frente a **Alucinación Creativa** (inventar píxeles). Aplicar la herramienta equivocada puede arruinar una biografía familiar o destruir la credibilidad de un anuncio.

---

## 1. El Dilema del Retoque Fotográfico: Fidelidad vs. Alucinación

### El Gran Peligro de Magnific AI en Fotos Familiares Reales
* **Magnific AI** es el rey de la *alucinación generativa*. Está diseñado para arte digital y 3D: se inventa detalles espectaculares (texturas de piel, gotas de sudor, ladrillos).
* **El Problema en este negocio**: Si le metes una foto borrosa de la abuela Carmen de 1955, Magnific "inventa" rasgos faciales, arrugas y ojos que **no pertenecen a la abuela**. Si le entregas a una familia un libro donde su madre parece otra persona, el rechazo es inmediato.

### La Matriz Real de Herramientas de Restauración

| Herramienta | Tipo de Tecnología | Fidelidad a la Identidad | Cuándo Usarla en este Proyecto | Coste |
| :--- | :--- | :--- | :--- | :--- |
| **Topaz Photo AI / Gigapixel** | **Restauración Analítica / GAN** | **100% (Identidad sagrada)** | **El estándar editorial para el libro**. Limpia el grano, enfoca desenfoques y sube a 4K/300 DPI sin cambiar ni un solo rasgo facial. | ~33 $/mes o licencia desktop |
| **Krea AI (Enhancer)** | **Híbrido Ajustable** | Alta (regulable) | Ideal para la web: tiene un slider de "Creatividad vs Fidelidad" que permite controlar cuánto se inventa. | Plan Free / 20 $/mes |
| **Magnific AI** | **Generativa Pura** | Baja (inventa rasgos) | Solo para **anuncios de marketing visual**, portadas estilizadas o escenas ambientales donde no importe el rigor genealógico. | ~39 $/mes |
| **CodeFormer / SUPIR (Local)** | **Diffusion / Face Restoration** | Muy Alta | **100% Gratuito y Open Source**. Corre en local en tu máquina para restaurar rostros de forma fiel sin enviar fotos íntimas a nubes externas. | **0,00 €** |

> **Veredicto Fotográfico**: Para las fotos reales del libro de los clientes, el ganador absoluto es **Topaz Photo AI** (o **CodeFormer local**) por respeto a la identidad biográfica. Magnific queda relegado a la creación de creatividades artísticas para anuncios.

---

## 2. El Ecosistema de Vídeo UGC para TikTok e Instagram

El mercado del UGC publicitario ha evolucionado drásticamente más allá de Higgsfield. Hoy se divide en:

### A. Los Creadores de Actores Virtuales (Hyper-Realistic UGC Ads)

1. **Arcads (`arcads.ai`) — *El Estándar de las Agencias de Performance***:
   * **Por qué lidera**: No genera avatares robóticos; utiliza tecnología *OmniHuman*. Cuenta con actores y actrices en español de 35 a 55 años que hablan con pausas naturales, carraspeos, gestos cotidianos y microexpresiones que pasan el "scroll test" sin que nadie sospeche que es IA.
   * **Uso**: El "Guion 2 (El Despertador Filial)". Puedes generar 10 variaciones de la misma mujer de 45 años en su coche cambiando solo los primeros 3 segundos de gancho.
   * **Precio**: Suscripción profesional (~100 $/mes).

2. **Creatify AI (`creatify.ai`) — *La Fábrica URL-to-Video***:
   * **Cómo funciona**: Le pegas el enlace de tu landing (`memoriasvivas.es`), la IA lee la propuesta de valor, redacta 5 guiones de venta directa, elige un actor UGC, añade B-roll y te entrega el anuncio vertical montado en 2 minutos.
   * **Precio**: Plan de entrada desde ~39 $/mes.

3. **TikTok Symphony (Nativo y Gratuito)**:
   * TikTok ha integrado en su propio **Ads Manager** su suite generativa de avatares comerciales y doblaje en tiempo real. Si vas a pagar anuncios en TikTok, puedes usar sus avatares comerciales nativos sin pagar suscripciones externas a terceros.

4. **LivePortrait (Open Source / GitHub)**:
   * Si no quieres pagar suscripciones: te grabas tú mismo 10 segundos hablando con el móvil con buena entonación, y LivePortrait traslada tus gestos y tu voz a la foto de cualquier persona con precisión milimétrica.

---

## 3. Matriz de Decisión Operativa para Memorias Vivas Studio

```
                      ¿QUÉ NECESITAS HACER?
                                 │
         ┌───────────────────────┴───────────────────────┐
         ▼                                               ▼
[ RETOQUE DE FOTOS ]                           [ VÍDEOS UGC REDES ]
         │                                               │
   ¿Es para el libro familiar?                   ¿Qué nivel de producción?
   ├─► SÍ (Fotos reales de clientes):            ├─► Máxima Realismo (Meta Ads):
   │   Topaz Photo AI o CodeFormer local.        │   Arcads (Actores españoles adultos)
   │   (Cero alucinación facial).                │
   └─► NO (Anuncios / Impacto publicitario):     ├─► Volumen Rápido (URL-to-Video):
       Krea AI o Magnific.                       │   Creatify AI / TikTok Symphony
       (Texturas y nitidez extrema).             │
                                                 └─► Coste Cero (Homelab):
                                                     MoneyPrinterTurbo (:8501) + Edge-TTS
```
