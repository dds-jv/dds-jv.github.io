---
layout: page
title: "Caso de Uso: Evaluaciones de Desempeño"
description: Ejercicio de la Guia 1
permalink: /ejercicios/guia-1/evaluaciones/
---
# Enunciado
Una importante empresa realiza anualmente la evaluación de desempeño de su personal, para lo cual define para cada empleado una serie de objetivos a cumplir al comienzo de cada período. El proceso está compuesto por tres actores: 
* Evaluador: es la persona que califica a la persona evaluada, de quien depende directamente en la escala jerárquica. 
* Evaluado: es la persona a quien se le realiza la evaluación de desempeño, el subordinado del evaluador. 
* Gerente o Aprobador: es el responsable de la Gerencia donde trabaja el Evaluado. 

El circuito de la evaluación tiene los siguientes pasos: 
* El evaluador confecciona una planilla para cada uno de sus evaluados, que tiene el siguiente formato.

![Evaluación de Desempeño]({{site.baseurl}}/attachments/ejercicios/guia-1/evaluaciones-1.png)

La evaluación puede ser grabada y modificada por el evaluador todas las veces que quiera. Hasta entonces el evaluado no puede ver su evaluación, solamente las evaluaciones de períodos anteriores. El gerente tiene acceso a la evaluación, pero sólo en modo consulta. 

* Cuando el evaluador decide publicar la evaluación, llama a su evaluado y le comunica las calificaciones obtenidas. Adicionalmente el evaluado accede a la aplicación y visualiza las calificaciones ingresadas por su evaluador. El evaluador no puede modificar la evaluación (accede al igual que el gerente en modo sólo consulta). El evaluado puede agregar comentarios que quedan adosados a la evaluación, y debe firmarla. 

## Si el empleado forma parte de la empresa

*  Cuando el evaluado firma la evaluación la misma pasa para revisión del gerente, que genera un concepto final del evaluado (en base al concepto sugerido por el evaluador). En esta instancia puede agregar comentarios para justificar su decisión, y finalmente debe poner su firma para que la evaluación pase a estado cerrado. Mientras tanto el evaluador y el evaluado pueden ingresar a visualizar la evaluación en modo consulta solamente. 

## Si el empleado forma parte del personal contratado (es externo a la empresa y le presta servicios): 

* Cuando el evaluado firma la evaluación la misma pasa para revisión de un Gerente de la Consultora para la cual trabaja. Dicho gerente externo puede realizar comentarios y debe firmar la evaluación para que pase a revisión del Gerente interno de la empresa. Durante esta instancia tanto el evaluador, como el evaluado como el gerente interno visualizan la evaluación en modo consulta solamente. 

* El gerente de la compañía genera un concepto final del evaluado (en base al concepto sugerido por el evaluador). En esta instancia puede agregar comentarios para justificar su decisión, y finalmente debe poner su firma para que la evaluación pase a estado cerrado. Mientras tanto el evaluador y el evaluado pueden ingresar a visualizar la evaluación en modo consulta solamente. 

Un evaluador de una evaluación puede a su vez participar como evaluado en otra evaluación. 