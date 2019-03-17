---
layout: page
title: Modelado de Datos
description: Ejercicios cortos (Guía 5)
permalink: /ejercicios/guia-5/
---
# Diseño en el modelo relacional
Para cada uno de los siguientes ejercicios:

- [Manejo de proyectos](https://sites.google.com/site/utndesign/material/guia-de-ejercicios/guia-modelado-datos/datos-manejo-de-proyectos)
- [Préstamos de libros](https://sites.google.com/site/utndesign/material/guia-de-ejercicios/guia-modelado-datos/datos-prestamos-de-libros)
- [Empresa de remises](https://sites.google.com/site/utndesign/material/guia-de-ejercicios/guia-modelado-datos/datos-remises)
- [Taller mecánico](https://sites.google.com/site/utndesign/material/guia-de-ejercicios/guia-modelado-datos/datos-taller-mecanico)
- [Restaurant](https://sites.google.com/site/utndesign/material/guia-de-ejercicios/guia-modelado-datos/datos-restaurant)
- [Empresa constructora](https://sites.google.com/site/utndesign/material/guia-de-ejercicios/guia-modelado-datos/datos-constructora)

Se pide:
- Defina el DER Físico para el modelo relacional.
  - Identifique las entidades, sus atributos y definir dominio/tipo de dato para cada atributo.
  - Las relaciones entre las entidades, incluyendo cardinalidad (1 a 1, 1 a muchos, muchos a 1, muchos a muchos).
  - Defina claves primarias, alternativas y foráneas de cada entidad.
- Implemente el DER en una base de datos Open Source.
  - Construya el script de creación de entidades (DDL).
  - Genere el script de inserción de datos de prueba (DML, en algunos ejercicios se proveen ejemplos concretos, en otros debe definirlo ud.).
- En el caso de que el ejercicio plantee reglas de negocio.
  - Defina los componentes de la base de datos que resolverán cada requerimiento.
  - Implemente ese componente.

_Material teórico relacionado: [Diseño lógico de datos](https://docs.google.com/document/d/1u3uCG0WPTWeaF03varcvGqPAJfh4OQJyXsaPdK5QiAA/edit?usp=sharing), [Introducción al modelo relacional](https://docs.google.com/document/d/1uF3yoYIFmLxTH5ZJoT9I3cc5TW9b-H3BqZJbLudKBcA/edit?usp=sharing), [Diseño de componentes en la base de datos](https://docs.google.com/document/d/1zeagKbYb5w1mGCbTDGT1gRgaQS5keLrnAfFAn8v2dtY/edit?usp=sharing)_

# Mapeo relacional/objetos y objetos/relacional
1. Para cada uno de los ejercicios anteriores, se pide que defina el modelo de objetos correspondiente. ¿Qué elementos propios del modelo relacional son necesarios llevar al modelo de objetos? Justifique su respuesta.
2. Para cada uno de los siguientes ejercicios:
  - [Partidos de fútbol](https://sites.google.com/site/utndesign/material/guia-de-ejercicios/guia-modelado-datos/orm_partidosfutbol)
  - [Profesores y materias](https://sites.google.com/site/utndesign/material/guia-de-ejercicios/guia-modelado-datos/orm_profes_y_materias)
  - [Telefonía](https://sites.google.com/site/utndesign/material/guia-de-ejercicios/guia-modelado-datos/orm_telefonia)
    Se pide que plantee una estrategia para mapear el modelo de objetos a un modelo relacional equivalente, analizando cómo resolver cada uno de los siguientes puntos:

      - Identidad.
      - Mapeo de los tipos de dato.
      - Tipos de colección a utilizar (ordenada o no, con/sin duplicados, etc.) y relaciones entre entidades (1 a 1, 1 a muchos, muchos a 1, muchos a muchos).
      - Mapeo de la herencia.

    Implemente dicha estrategia a partir de utilizar:
    - Una API (como JDBC) y resolviendo manualmente los mapeos
    - Un framework de OR/M como Hibernate.

¡Tenés más ejercicios en los [enunciados de segundo parcial]({{site.baseurl}}/enunciados/parte-b)!

_Material teórico relacionado: [Mapeo Objetos/Relacional](https://docs.google.com/document/d/1YLmp9vMnSzKg2emt3Bx564Tf1CLalShPc98Z8nCoi7s/edit?usp=sharing)_

# Normalización en modelo relacional
- [Remedios](https://sites.google.com/site/utndesign/material/guia-de-ejercicios/guia-modelado-datos/norm-remedios)
- [Vuelos](https://sites.google.com/site/utndesign/material/guia-de-ejercicios/guia-modelado-datos/norm-vuelos)
- [Videoclub](https://sites.google.com/site/utndesign/material/guia-de-ejercicios/guia-modelado-datos/norm-videoclub)
- [Canchas de paddle](https://sites.google.com/site/utndesign/material/guia-de-ejercicios/guia-modelado-datos/norm-canchaspaddle)

Nota para todos los ejercicios: Para aplicar el proceso de normalización no es necesario resolver en orden 1FN, luego 2FN, etc. sino que aplique la técnica como ud. crea más conveniente.

¡Tenés más ejercicios en los [enunciados de segundo parcial]({{site.baseurl}}/enunciados/parte-b)!

_Material teórico relacionado: [Normalización](https://docs.google.com/document/d/1Jil-3oiveXDtY1iKBCof7jE9ooRFJ-f1KjcXgaGk6F0/edit?usp=sharing) en el modelo relacional_

# Integración  
- [Canchas de Paddle Extendido](https://docs.google.com/document/d/1qiEPQ3DdYal-VWsZ9iQvRxhUoHRqXhh0bXMIhpl5cSQ/edit#) (Todo menos ORM)

# Bonus

## Normalización en el modelo de objetos 

### Para el ejercicio de los partidos de fútbol
Si la entidad Partido conoce muchas incidencias, donde una de ellas puede ser un Gol y así se puede determinar el resultado del partido explique qué ventaja podría representar si almacenamos la cantidad de goles convertidos por cada equipo (dos enteros). 

### Para el ejercicio de telefonía
- Nos consultan si no sería conveniente tener la deuda de un cliente almacenada de un BigDecimal, para evitar calcularla cada vez que sea necesario. ¿Qué opinión daría ud. como diseñador?
- Además para emitir estadísticas semestrales necesitamos determinar el domicilio/barrio a la que llamó el abonado en una llamada determinada, sabemos que cada abonado puede eventualmente mudarse y llevarse la línea. ¿Qué modificaciones haría ud. al modelo de objetos?

_Material teórico relacionado: [Normalización en OODBMS](http://www.mcs.vuw.ac.nz/comp/Publications/archive/CS-TR-96/CS-TR-96-16.pdf)_

## Diseño en el modelo no-relacional
Para cada uno de los siguientes ejercicios:
- [Planteles de equipos de fútbol](https://sites.google.com/site/utndesign/material/guia-de-ejercicios/guia-modelado-datos/nosql_plantelesfutbol)
- [Alumnos](https://sites.google.com/site/utndesign/material/guia-de-ejercicios/guia-modelado-datos/nosql_alumnos)
- [Procesamiento de llamadas telefónicas](https://sites.google.com/site/utndesign/material/guia-de-ejercicios/guia-modelado-datos/nosql_telefonia)

Se pide que:
1. Plantee una solución en un modelo NoSQL, desde la perspectiva de una base:
  - Clave-valor.
  - Orientadas a documentos.
  - De grafos.
2. Implemente la solución en una tecnología de base de datos. 

_Material teórico relacionado: [NoSQL](https://docs.google.com/document/d/1tyuJNCCsMkv4qa7yCHO69lP1cReJ0HZeT2zGfWhqinQ/edit?usp=sharing)_