---
layout: page
title: Clase 9
description: Jueves (Mañana, 2021)
permalink: /bitacoras/2021/jueves-m/clase-09/
---

## Resumen

*¡Novena clase de Diseño de Sistemas en pantuflas!*

En esta clase arrancamos viendo el ejercicio base de Nefli, para practicar como usar un observer, en vez de solo ser los creadores de este.
Además, en anteriores clases introducimos la noción de Componentes y las interfaces que nos permiten adaptarlos. Pero en esta clase haremos mayor hincapié en la manera que estos se comunican entre sí.

## Lo que vimos

- [Patrones de Comunicación entre Componentes](https://docs.google.com/document/d/1EVPwqFyq2TW5Z5_VUeWdh9yLesxPBbSBzke2jHNURuk/edit)
  - _"Call & Return"_
  - _"Call By Reference"_ (Memoria compartida)
  - Excepciones
  - _"Continuation Passing Style"_ (Continuaciones)
  - Eventos
  - Mensajes asincrónicos

Podés ver una **muy** interesante comparación de todos los patrones [acá](https://docs.google.com/document/d/1dBaf8tILr37iD2mNMiZsfeYdL7AADW698skIkkoVU9g/edit).

**¡Mirá!** En [éste repositorio](https://github.com/dds-utn/patrones-comunicacion) tenemos ejemplos donde implementamos los patrones de comunicación.

## Material utilizado

- [Presentación utilizada](https://docs.google.com/presentation/d/1AE7Zb-dFgZqKJRo0xkesrC8C1w_ngZ2f7IDLW_nFnKo/edit?usp=sharing)
- [Video de la clase](https://youtu.be/9UYIo4qlTv0)

- Código alternativa 1

```
---alternativa 1


--registro el listen
reproductor.registerOnStop(new StopHandler())

RepoPelis>>pendientes()
  this.pelis.filter(peli => peli.estaPendiente())


Peli>>id
Peli>>minutoActual=0

Peli>>estaPendiente()
  if (this.minutoActual != 0)
    return true
  return false

Peli>>continuarViendo()
  reproductor.play(this.id, this.minutoActual)
  this.minutoActual = 0


StopHandler>>onStop(idVideo, minutoActual)
  peli = RepoPelis.getInstance().findById(idVideo)
  peli.minutoActual = minutoActual


-- uso
-- listar las pelis pendientes
RepoPelis.getInstance().pendientes()

-- retomar una peli sin terminar
monstersInc.continuarViendo()

```

- Código alternativa 2

```
---alternativa 2


--registro los listeneres
reproductor.registerOnStop(new StopHandler())
reproductor.registerOnFinish(new FinishHandler())


RepoPelis>>pendientes()
  this.pelis.filter(peli => peli.estaPendiente())


Peli>>id
Peli>>minutoActual=0
Peli>>estaPendiente=False

Peli>>estaPendiente()
  return estaPendiente

Peli>>continuarViendo()
  reproductor.play(this.id, this.minutoActual)
  this.estaPendiente = False


StopHandler>>onStop(idVideo, minutoActual)
  peli = RepoPelis.getInstance().findById(idVideo)
  peli.minutoActual = minutoActual
  peli.estaPendiente = True

FinishHandler>>onFinish(idVideo)
  peli = RepoPelis.getInstance().findById(idVideo)
  peli.minutoActual = peli.duracion

-- uso
-- listar las pelis pendientes
RepoPelis.getInstance().pendientes()

-- retomar una peli sin terminar
monstersInc.continuarViendo()
```


## Para la próxima clase

- [Apunte reificar comportamiento](https://docs.google.com/document/d/1RnmKXlQ5tdIasBmFiYFOOe8_JZMSetaT1APLLE9NGIE/edit#heading=h.xuj11ffam8am)
- [Ejercicio manejo de proyectos](https://docs.google.com/document/d/1RqEERDOr2ZVNGUKkMVrnbgu0jT12mc4cB_t0Tg3tAeM/edit): de este apunte muchas cosas ya las vieron, pero no vendría mal repasarlas, la parte nueva de la solución es un patrón que a veces es útil que es el _composite pattern_
- Patrón State - Libro Patrones
- Patrón Composite - Libro Patrones
