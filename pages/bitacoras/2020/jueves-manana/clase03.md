---
layout: page
title: Clase 3
description: Jueves (Mañana, 2020)
permalink: /bitacoras/2020/jueves-m/clase-03/
---

**¡Hola!**

Recordá que siempre es importante tener presente lo visto en la [clase anterior]({{site.baseurl}}/bitacora/jueves-m/clase-02) para poder consultarnos cualquier inquietud que te haya quedado.

Pasado mañana, sábado 6/4 a las 9:00 o a las 14:00 (pueden asistir en cualquier horario), habrá en el Laboratorio de Medrano un taller introductorio relacionado a Java, Maven y Git. La asistencia es opcional, aunque es altamente recomendado para aquellos que no manejaron éstas tecnologías previamente y necesitan un poco más de tiempo.

Es importante que lleven leído o tengan a mano lo siguiente:
- Apunte de [Java](https://goo.gl/ioY8cc).
- Apunte de [Maven](https://goo.gl/FAFyRe).
- Apunte de [GIT](https://goo.gl/cwjcYB).

El ejercicio que se trabajará será el de [Macowins](https://goo.gl/tSWzi4).

# Resumen

En ésta clase vamos a continuar viendo los Patrones de Diseño, pero en particular un tipo de ellos: Los [_Creacionales_](https://docs.google.com/document/d/193WbUewu9RvK8Nv9orpxSoXeVA3R5Az1uYHhg8NRMtQ/edit#heading=h.6ya5si9ipi77), que como bien nos indica su nombre, consisten en buenas prácticas a casos frecuentes de creación de instancias.
También explicaremos porque decir _instanciación_ no es lo mismo que _configuración_.
  - [Builder](https://sourcemaking.com/design_patterns/builder)
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

# Material Complemetario

- [Abstract Factory](https://sourcemaking.com/design_patterns/abstract_factory)
- [Factory Method](https://sourcemaking.com/design_patterns/factory_method)
- _Opcional: [Prototype](https://sourcemaking.com/design_patterns/prototype)_
  
_Opcional:_ Leer éste apunte sobre [Patrones Creacionales](https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnx1dG5kZXNpZ258Z3g6MjFiNjAzMmU4NGFkM2I4).
