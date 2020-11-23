---
layout: page
title: Clase 22
description: Jueves (Mañana, 2020)
permalink: /bitacoras/2020/jueves-m/arquitectura-2/
---

**¡Hola!**

Hoy seguiremos profundizando sobre temas de arquitectura.

# Resumen

Puntualmente vamos a enfocarnos en los siguientes conceptos:

- **Balanceador de cargas:** Dispositivo de Hardware o Software especializado que permite distribuir (balancear) la carga de trabajo a los diferentes nodos a partir de un algoritmo.  

- **Microservicios:** Enfoque para desarrollar una sola aplicación como un conjunto de "pequeños" servicios. Donde cada uno se ejecuta en su propio proceso. Los mismos pueden (o no) estar escritos en diferentes lenguajes, comunicarse entre sí (por ejemplo, por medio de una API HTTP) y persistir su propios conjunto de datos. 
Es importante remarcar que no solo implica una forma de diseño diferente (en comparación con un monolito), sino que en líneas generales plantea un cambio a nivel organización del equipo.



Hoy en nuestra última clase teórica del año vamos a cerrar el tema de arquitectura y veremos un primer pantallazo acerca de algunos conceptos que rodean a las bases de datos _no relacionales_.

# Resumen

- Arquitectura:
	- **Cola de mensajes**: es un mecanismo de comunicación asincrónica entre 2 servicios que publican o leen mensajes en una cola que sirve para almacenar dichos mensajes hasta que sean procesados o eliminados. Veremos diferentes implementaciones existentes y algunas ventajas y desventajas que surgen de comparar la utilización de dicho mecanismo en comparación con API Rest y/o Bases de datos compartidas.
	- **Caché**: como bien vimos en algunas materias anteriores, es una capa de almacenamiento de alta velocidad que nos permite guardar un conjunto de datos, normalmente transitorios, para permitir que las solicitudes futuras a los mismos se atiendan con mayor rapidez.
- BDD no relacionales (NoSQL):
	- Diferentes tipos de Bases de datos (documentales, column family, clave valor, de grafos)
	- Teorema CAP

# Práctica

- [Guía de ejercicios de Arquitectura](https://docs.google.com/document/d/1snIOX5rNp3kwEkWF3R04-KuujUbMTOz1wanl3Rut0Ts/edit?usp=sharing)

# Material complementario
- _Créditos a Juan Zaffaroni:_
    - [NoSQL: Documental y Clave-Valor](https://drive.google.com/file/d/0B27PgUCCYOICWmhRX3RHdWtGUk0/view)
    - [NoSQL: Teorema CAP](https://drive.google.com/file/d/0B27PgUCCYOICWmhRX3RHdWtGUk0/view)


# Práctica

- [Guía de ejercicios de Arquitectura](https://docs.google.com/document/d/1snIOX5rNp3kwEkWF3R04-KuujUbMTOz1wanl3Rut0Ts/edit?usp=sharing)
