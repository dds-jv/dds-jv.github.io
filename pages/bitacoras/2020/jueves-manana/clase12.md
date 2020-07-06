---
layout: page
title: Clase 11
description: Jueves (Mañana, 2020)
permalink: /bitacoras/2020/jueves-m/clase-11/
---

**Onceava clase de Diseño de Sistemas en pantuflas!!**

## Resumen

Hicimos un repaso de las responsabilidades que tiene la vista y que partes tiene la presentación.

Vimos ejemplos de como se crean aplicaciones con interfaz gráfica en Java. Vimos que según los frameworks que utilizábamos la forma de comunicar el modelo con la vista puede variar.

El [ejemplo en Swing](https://github.com/uqbar-project/eg-conversor-arena-java/tree/master/src/main/java/org/uqbar/arena/examples/conversor/swing) donde nos comunicabamos directamente con los componentes de vista para obtener los valores y luego interactuar con el dominio. Y el [ejemplo de Arena](https://github.com/uqbar-project/eg-conversor-arena-java/blob/master/src/main/java/org/uqbar/arena/examples/conversor/ConversorWindow.java) donde el framework es el encargado mediante el binding de asociar los valores de la vista con los del modelo.

Hablamos del patrón de presentación MVC (Model-View-Controller), donde la responsabilidad del Controller es observar la vista y el modelo para comunicarlos, enterándose de sus cambios y haciendo adaptaciones para comunicárselos si así fuera.

Hablamos también de MVVM (Model-View-ViewModel) donde la responsabilidad del controller la toma el framework haciendo un binding entre la vista y el modelo de la vista. El modelo de la vista en una pantalla sencilla podría ser un objeto de dominio, pero también podría ser un objeto especifico creado para asociar los componentes de la vista, para eso vimos el [ejemplo de celulares](https://github.com/uqbar-project/eg-celulares-ui-arena-java).

## Material utilizado

- [Video de la clase](https://us02web.zoom.us/rec/share/vPJ7BvbNqHlJfK-T-V7HWZ59Brr9aaa80ycZ_aBcz0uf6FIwxtNTHgY4hB6GOLa9?startTime=1593691636000)
- [Presentación utilizada](https://docs.google.com/presentation/d/1tLPWq7Jq4DcqacM9rAZAkMZLxubRvxA3VHY7ewfuOGk/edit#slide=id.g8b03c295a0_0_220)

### Complementario
- [Arena, un framework "MVVM"](https://sites.google.com/site/programacionui/temario/02-disenio-UI/arena-disclaimer)
- [información para instalarlo](http://arena.uqbar-project.org)
