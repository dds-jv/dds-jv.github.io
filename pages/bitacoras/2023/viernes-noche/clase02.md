---
layout: page
title: Clase 2
description: Viernes (Noche, 2023)
permalink: /bitacoras/2023/viernes-n/clase-02/
---

**¡Hola!**

Ya conocemos la materia, por lo que ahora podremos profundizar sobre muchos temas. Para empezar, tenemos que saber diseñar y es necesario introducirnos en lo que son las buenas prácticas.

_Importante: En caso de que tengas dudas sobre Java y Maven, ¡preguntá!_

# Resumen

- Aprendimos sobre cualidades de diseño y sobre cómo comunicarlo.
- Evacuamos dudas y consultas de Macowins
- Abordamos el concepto de _Patrones de Diseño_.  Dentro de estos patrones, vimos: 
   - Strategy (estrategia): solución basada en composición. No toda composición es un strategy. 
   - Template method (método plantilla): solución basada en herencia con clase abstracta que tiene un método concreto. No toda herencia ni herencia de clase abstracta es un template method.
- Hablamos sobre la importancia de pensar los patrones desde la semántica y no solamente desde las estructuras.  
- Abordamos las cualidades de diseño. En particular, charlamos bastante sobre: 
   - Simplicidad
   - Flexibilidad, extensibilidad
   - Abstracción: que el nombre de las abstracciones, su estado y su comportamiento esté semánticamente vinculado. 
    - Mutaciones controladas: minimizar los cambios accidentales (es decir, innecesarios) en los objetos de nuestro dominio. Siempre que se pueda modelar de forma “funcional”, con objetos sin estado, o estado que no cambia, mejor, porque hace más sencillo razonar sobre el código
- Repasamos soluciones basadas en composición vs herencia. 
  - Ventajas y desventajas de cada una: las primeras son más dinámicas, mientras que las segundas son estáticas. 

# Material

- [Presentación](https://docs.google.com/presentation/d/1l4etWvZz0KTu7MGWct1wBusg1hXFRZYw_7g-2d-mm8U/edit#slide=id.g35f391192_00)
- [Video de Template y Strategy](https://www.youtube.com/watch?v=NZRYknYXX90)
- [Cualidades de Diseño](https://docs.google.com/document/d/14HdvHvS33WqYb6Ak0BGa0IeCTbzeCRSDKs-1Ot-qLDw/edit)
	- _Complementario: [Guías para comunicar un diseño](https://docs.google.com/document/d/1HGdGdDG7RAhL5j45UOFGK3F5sV2-rKHVHmPoYawHS5Y/edit?usp=sharing)_
	- _Complementario: [Las entradas del diseño](https://docs.google.com/document/d/1qPM_sQ0UyGFKRzl13Cbf6zDKj6vxJ4wMZQIXeOrRvM8/edit?usp=sharing)_
- [Introducción a los patrones de de diseño)](https://docs.google.com/document/d/1uXPhuAKXa4wzcIhriFfnI53aB311jOZtcKfTDuiKQ8Y/edit) t)_
- [Solución - Macowins](https://docs.google.com/document/d/10Tp6E4zEl1ibuUVKBJ-RbyIWD1O1EyAFfPU73c1Ycm4/edit)
	* [Versión explicada](https://drive.google.com/open?id=1x1SuTwc5fQW-rT4n5-nixMp-ymkwyKFV)
	* [Pseudocódigo visto en clase](https://drive.google.com/open?id=1x1SuTwc5fQW-rT4n5-nixMp-ymkwyKFV)
	* [Video sobre patrones Strategy y Template Method](https://drive.google.com/file/d/11vgwTdXXujSuDQTDULVLtHEiRFuzPoik/view)
	* [Explicación opciones visto el año anterior](https://drive.google.com/file/d/1uPhQOEmUAg7Vi0eRHtXWkDNPhIrLO5iv/view?usp=sharing) : tienen que entrar con el usuario de la facultad.
- Tarjetas de patrones de diseño (**no reemplazan al libro de patrones de GOF**): https://refactoring.guru/es/design-patterns 
  - https://refactoring.guru/es/design-patterns/strategy 
  - https://refactoring.guru/es/design-patterns/template-method

# Tarea

* [Ejercicio: Qué Me Pongo - Iteración I](https://docs.google.com/document/d/1k1f-9AuIohlBGB2soSNePJ6jLxM37_tZeSD-hW_esIQ)
* Y leé el apunte sobre [Diseño de manejos de errores](https://docs.google.com/document/d/1u7t9eKDdAVwhQVAkstV0nkfAGIJsY2O_UEHKJJVje6c/edit#heading=h.x500jbxzopra)
  * _Complementario_: [Excepciones en Java](https://docs.google.com/document/d/1G0a9j-OA0rIEA5cdvEhIMbztJVo86ssvZKBK8HL9akg/edit)
