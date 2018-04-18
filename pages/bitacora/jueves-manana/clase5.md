---
layout: page
title: Clase 5
description: Jueves (Mañana)
permalink: /bitacora/jueves-m/clase-5/
---
# Resumen

Ya tuvimos un avance respecto a los _Patrones de Diseño_, de hecho en las últimas clases nos enfocamos en los siguientes:
- Adapter: Para adaptarnos (valga la redundancia) a, por ejemplo, servicios externos cuyas interfaces pueden variar.
- Observer: Por ejemplo, en situaciones en donde no sabemos cuando puede terminar una operación y necesitamos continuar sin descuidar lo que ocurra en paralelo (llegado el momento en que termine, poder enterarnos de ésto). Ahí también conocimos el concepto de _asincronismo_.

Como ven, hasta ahora trabajamos gestionando el comportamiento para evitar malas prácticas en éste aspecto. 

Sin embargo, ahora nos queda "darle cuerpo" (modelar) al comportamiento, y es a ésto que denominamos _cosificación_, a la idea de poder crearlo y usarlo según como lo necesitemos.

# ¿Qué deberíamos saber antes?

Básicamente, si no lo hiciste antes, aprovechá de leer los siguientes apuntes:
- [Introducción a los Patrones de Diseño](https://docs.google.com/document/d/1uXPhuAKXa4wzcIhriFfnI53aB311jOZtcKfTDuiKQ8Y/edit)
  - [Patrón Strategy](https://github.com/dieforfree/edsebooks/blob/master/ebooks/Design%20Patterns%2C%20Elements%20of%20Reusable%20Object-Oriented%20Software.pdf)
  - [Patrón Template Method](https://github.com/dieforfree/edsebooks/blob/master/ebooks/Design%20Patterns%2C%20Elements%20of%20Reusable%20Object-Oriented%20Software.pdf)

# ¿Qué vamos a ver?

Vamos a ver (y practicar) en profundidad el [Patrón Command](https://github.com/dieforfree/edsebooks/blob/master/ebooks/Design%20Patterns%2C%20Elements%20of%20Reusable%20Object-Oriented%20Software.pdf).

**¡Mirá!** [Acá](https://docs.google.com/document/d/1-esJOhKb_yAABls-XdRrEYHzCv4yn-qqFtCu3xpgCg0/edit) hay un caso donde se implementa.
