---
layout: page
title: Clase 6
description: Jueves (Mañana, 2020)
permalink: /bitacoras/2020/jueves-m/clase-06/
---


**¡Hola!**

Cuarta clase de Diseño de Sistemas en pantuflas!

- [Video](https://us02web.zoom.us/rec/play/7pwvdeCh-D03H4aTtQSDAfB6W47pLf6s0yBKrqYJxUy9VXJSY1WkMLMUMOdh9c8szv0_v8UUuSnacKKs?startTime=1588249464000&_x_zm_rtaid=DkHWDh_3SQCAwd5XjW5eEw.1588348184256.9c56008955686955a4928f6f56d6a065&_x_zm_rhtaid=449)

- [Presentación](https://docs.google.com/presentation/d/1McLAT-VnnWiitCmURzQmdbxVCCSt7M18xUMu4GnNBBs/edit#slide=id.p)

- [Preguntas usadas](https://quizizz.com/join/quiz/5eac507e7cf884001d75d385/start?from=soloLinkShare&referrer=5e80f3362abd61001b3daf75)

# Resumen

En esta clase estuvimos analizando algunos Code smells (o indicios que denotan que puede haber un problema de diseño detrás) y refactoring.

Para hacer el refactor, nos apoyamos en algunas de las herramientas que nos provee el IDE (como fue renombrar clases asegurando la consistencia, algo que usando un editor de texto más limitado tendríamos que controlar a mano).
Fuimos teniendo en cuenta algunas cuestiones comunes a cualquier refactor:
  - no hacer todo el refactor de una, sino que ir haciendo commits pequeños
  - después de cada cambio en el diseño, correr los tests para validar que los resultados obtenidos no hayan variado

Algunos refactors que hicimos:
 - delegar (extraer en un nuevo método)
 - renombrar
 - indentar

Además, vimos por qué el testing es importante: no sólo nos permite validar que nuestro código se adecúe a los requerimientos, sino que son una base clave para poder hacer cualquier refactor (estando seguros de que no rompimos nada).

Les dejamos un apunte sobre [manejo del cambio](https://docs.google.com/document/d/1cAje0qwy3Cus_ob0r-tatbcT01sDFeLt3MmSVmLeSxk/edit) en el que pueden ver lo que hablamos hoy.

# Para la próxima clase
## Apuntes

[Biblioteca vs. Framework](https://docs.google.com/document/d/1D_MCoh4J8kL1MAKNlbDgAMu2nYxri-81nZBYOPFWnO0/edit)

[Introducción a la inyección de dependencias](https://docs.google.com/document/d/1GsW-hVF0XR76KunDILqkltyE1KIBvj3ldCCkyStjne0/edit)

# Material complementario

De manera adicional, agregamos un articulo de Martin Fowler sobre [deuda ténica](https://martinfowler.com/bliki/TechnicalDebt.html)
