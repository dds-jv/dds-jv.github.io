---
layout: page
title: Clase 10
description: Jueves (Mañana, 2022)
permalink: /bitacoras/2022/jueves-m/__clase-10/
---

*Decima clase de Diseño de Sistemas en pantuflas!!*

## Resumen

Vimos dos patrones que nos pueden ayudar en nuestro modelado.

* El [patrón State](https://docs.google.com/document/d/1RnmKXlQ5tdIasBmFiYFOOe8_JZMSetaT1APLLE9NGIE/edit#heading=h.xuj11ffam8am) que nos sirve para cosificar un estado que va cambiando con el tiempo y su comportamiento varia.
* El [patrón Composite](https://docs.google.com/document/d/1RqEERDOr2ZVNGUKkMVrnbgu0jT12mc4cB_t0Tg3tAeM/edit) que nos sirve para cosificar un árbol, donde vamos a tratar los nodos finales e intermedios de manera polimorfica.

Además vimos las responsabilidades que tiene la vista y que partes tiene la presentación.

Vimos ejemplos de como se crean aplicaciones con interfaz gráfica de escritorio en Java. Vimos que según los frameworks que utilizábamos cambia la forma de comunicar el modelo con la vista puede variar.

El [ejemplo en Swing](https://github.com/uqbar-project/eg-conversor-arena-java/tree/master/src/main/java/org/uqbar/arena/examples/conversor/swing) donde nos comunicabamos directamente con los componentes de vista para obtener los valores y luego interactuar con el dominio. Y el [ejemplo de Arena](https://github.com/uqbar-project/eg-conversor-arena-java/blob/master/src/main/java/org/uqbar/arena/examples/conversor/ConversorWindow.java) donde el framework es el encargado mediante el binding de asociar los valores de la vista con los del modelo.

Hablamos del patrón de presentación MVC (Model-View-Controller), donde la responsabilidad del Controller es observar la vista y el modelo para comunicarlos, enterándose de sus cambios y haciendo adaptaciones para comunicárselos si así fuera.

Hablamos también de MVVM (Model-View-ViewModel) donde la responsabilidad del controller la toma el framework haciendo un binding entre la vista y el modelo de la vista. El modelo de la vista en una pantalla sencilla podría ser un objeto de dominio, pero también podría ser un objeto especifico creado para asociar los componentes de la vista, para eso vimos el [ejemplo de celulares](https://github.com/uqbar-project/eg-celulares-ui-arena-java).

## Material utilizado

- [Video de la clase](https://youtu.be/wMnrDTa_PbE)
- [Presentación utilizada](https://docs.google.com/presentation/d/1JeV5LwUXoV4b66fNdJ2NU7Vb8MrljDoLoAf9T8Ubdd8)

### Complementario
- [Arena, un framework "MVVM"](https://sites.google.com/site/programacionui/temario/02-disenio-UI/arena-disclaimer)
- [información para instalarlo](http://arena.uqbar-project.org)
