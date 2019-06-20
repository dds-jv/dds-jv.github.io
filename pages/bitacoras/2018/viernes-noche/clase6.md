---
layout: page
title: Clase 6
description: Viernes (Noche, 2018)
permalink: /bitacoras/2018/viernes-n/clase-6/
---
# Resumen
En ésta clase vamos a continuar viendo los Patrones de Diseño, pero en particular un tipo de ellos: Los [_Creacionales_](https://docs.google.com/document/d/193WbUewu9RvK8Nv9orpxSoXeVA3R5Az1uYHhg8NRMtQ/edit#heading=h.6ya5si9ipi77), que como bien nos indica su nombre, consisten en buenas prácticas a casos frecuentes de creación de instancias.
También explicaremos porque decir _instanciación_ no es lo mismo que _configuración_.
  - Builder
  - [Singleton](https://sourcemaking.com/design_patterns/singleton)

Además, hablaremos sobre [_Inyección de Dependencias_](https://docs.google.com/document/d/1GsW-hVF0XR76KunDILqkltyE1KIBvj3ldCCkyStjne0/edit#heading=h.niaj9skgl3x9) y como hacerlo de forma correcta para favorecer la inmutabilidad y mantener el principio _fail-fast_ (¿se acuerdan?).

### Práctica

Trabajaremos con el siguiente ejercicio (¡accedé al [repositorio](https://github.com/dds-utn/computers)!):

> En un Negocio de Tecnología dejan construir a los clientes las PCs a partir de los diferentes componentes. Solo se venden PCs armadas completas y funcionales.
> Hay componentes mínimos para hacer andar una PC y otros que son opcionales
> - Requeridos: Motherboard, Fuente, Disco de Almacenamiento
> - Opcionales: Placa de Video, Teclado, Mouse, Monitor, Disco SSD.
>
> Tener en cuenta la restricción de que las Placas de Video nVidia funcionan solo con microprocesadores Intel y las placas de video AMD funcionan solo con microprocesadores AMD.
> Una vez finalizado hay que saber el precio del componente que es igual a la sumatoria de precios de los componentes.

# ¿Qué queda leer?

- Abstract Factory
- Repasar:
	- Builder
	- Factory Method
- _Opcional: Prototype_
  
_Opcional:_, Leer éste apunte sobre [Patrones Creacionales](https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnx1dG5kZXNpZ258Z3g6MjFiNjAzMmU4NGFkM2I4). 