---
layout: page
title: Clase 2
description: Viernes (Noche, 2024)
permalink: /bitacoras/2024/viernes-n/clase-02/
---

**¡Hola!**

Ya conocemos la materia, por lo que ahora podremos profundizar sobre muchos temas. Para empezar, tenemos que saber diseñar y es necesario introducirnos en lo que son las buenas prácticas.

_Importante: En caso de que tengas dudas sobre Java y Maven, ¡preguntá!_

# Resumen

- Aprendimos sobre cualidades de diseño y sobre cómo comunicarlo.
- Evacuamos dudas y consultas sobre Java y Maven. En particular, recalcamos que es una herramienta de gestión de dependencias y de construcción de proyectos, que ofrece comandos como:


```bash
# para instalar dependencias y proyectos
mvn install
# ejecutar pruebas
mvn test
# empaquetar al proyecto
mvn package
```

- Hablamos sobre cualidades de diseño. Hablamos sobre la correlación positiva y negativa: son pocos los pares de cualidades (si es que siquiera existen) en que siempre una va a ir en contra o a favor de la otra. En general, tenemos que estudiar la correlación entre las cualidades de forma situada. ¿Hay una solución ideal? No ¿Buscaremos producir una única solución? Tampoco. El objetivo es comparar, formar criterio y lograr pensamiento crítico.
- Abordamos el concepto de _Patrones de Diseño_.  Dentro de estos patrones, vimos:
   - Strategy (estrategia): solución basada en composición. No toda composición es un strategy.
   - Template method (método plantilla): solución basada en herencia con clase abstracta que tiene un método concreto. No toda herencia ni herencia de clase abstracta es un template method.
- Hablamos sobre la importancia de pensar los patrones desde la semántica y no solamente desde las estructuras.
- Repasamos soluciones basadas en composición vs herencia.
  - Ventajas y desventajas de cada una: las primeras son más dinámicas, mientras que las segundas son estáticas.

# Material

- [Presentación](https://docs.google.com/presentation/d/1_RqovrnLXMbWp9VtVommoxWUiqcDXKJcIpPdSsPPoSs/edit?usp=sharing)
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

* [Ejercicio: Qué Me Pongo - Iteración I](https://docs.google.com/document/d/1k1f-9AuIohlBGB2soSNePJ6jLxM37_tZeSD-hW_esIQ). ¡Traelo hecho para la clase que viene!
* Mirá el video [Desafiando los algoritmos de opresión](https://www.youtube.com/watch?v=iRVZozEEWlE) (Tiene subtítulos automáticos, no son los mejores pero se entiende bastante bien). ¡Lo charlamos en clase!
* Dale un nuevo vistazo al apunte de [Cualidades de Diseño](https://docs.google.com/document/d/14HdvHvS33WqYb6Ak0BGa0IeCTbzeCRSDKs-1Ot-qLDw/edit): lanzamos una nueva versión. 
* Y leé el apunte sobre [Diseño de manejos de errores](https://docs.google.com/document/d/1u7t9eKDdAVwhQVAkstV0nkfAGIJsY2O_UEHKJJVje6c/edit#heading=h.x500jbxzopra)
  * _Complementario_: [Excepciones en Java](https://docs.google.com/document/d/1G0a9j-OA0rIEA5cdvEhIMbztJVo86ssvZKBK8HL9akg/edit)
