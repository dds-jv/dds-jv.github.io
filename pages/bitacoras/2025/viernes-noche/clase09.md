---
layout: page
title: Clase 9
description: Viernes (Noche, 2025)
permalink: /bitacoras/2025/viernes-n/clase-09/
---


## Resumen

En esta clase repasamos la noción de eventos para comunicar cosas que ocurren en nuestro sistema a otros objetos, sin acoplarnos a lo que hacen, pero ganando en flexibilidad de que se puedan suscribir otros interesados.

Además, introducimos el concepto de patrones de comunicación entre componentes, entre los que aparecerán viejos conocidos junto a nuestro nuevo concepto de eventos.

Finalmente, trabajaremos sobre tareas programadas.

### Tareas programadas

Las tareas programadas (o _tareas calendarizadas_) operaciones del sistema que en lugar de buscar ejecutarlos de forma interactiva, como parte de nuestros casos de uso, sino de forma automática, con cierta frecuencia.

##  Puntos de entrada

Vamos a necesitar definir un archivo que oficie de punto de entrada, o como se suele llamar en inglés, _main_. Este archivo será responsable de cargar nuestro código y ejecutar la tarea calendarizada.

```java
public class Main {
   public static void main(string[] args) {
      // ...
   }
}
```

## Empaquetado

Vamos a tener que agregar la configuración del `maven-assembly-plugin` a nuestro `pom.xml`:

```xml
<plugin>
    <artifactId>maven-assembly-plugin</artifactId>
    <executions>
        <execution>
            <phase>package</phase>
             <goals>
                 <goal>single</goal>
             </goals>
         </execution>
     </executions>
     <configuration>
         <descriptorRefs>
             <!-- This tells Maven to include all dependencies -->
             <descriptorRef>jar-with-dependencies</descriptorRef>
         </descriptorRefs>
         <archive>
             <manifest>
                 <mainClass>archivo.con.el.Main</mainClass>
             </manifest>
         </archive>
    </configuration>
</plugin>
```

## Crontab

Finalmente vamos a tener que generar un crontab:

```bash
# Con este comando podemos listar las tareas instaladas
crontab -l
```

```bash
# nos permitirá editar las tareas
crontab -e
```

## Paréntesis: editores de línea de comando

Al editar las tareas de `cron`, éste nos abrirá por defecto un editor de línea de comandos, como `nano` o `vim`. ¡A no temer! Es un editor, pero que se opera mediante el teclado.


## Expresiones cron

Ahora sí, expresiones cron. Tienen la siguiente forma:

```bash
# m h  dom mon dow   command
```

Por ejemplo:

```bash
# a cada minuto de cada día
* *  *   *   *     java -jar /home/user/nombre-del-jar.jar
```

```bash
# cada 5 minutos
*/5 *  *   *   *     java -jar /home/user/nombre-del-jar.jar
```


```bash
# al inicio de cada hora
0 *  *   *   *     java -jar /home/user/nombre-del-jar.jar
```

```bash
# a las 23:59 de cada domingo
23 59  *   *   0     java -jar /home/user/nombre-del-jar.jar
```

¡Tenemos que tener cuidado! Las rutas a los archivos deben ser absolutas.


Si todo está bien, obtendremos el siguiente mensaje al guardar:

```
crontab: installing new crontab
```

## Archivos de log

Necesitamos tener registro de lo que pasó. Redirecciones: > vs >>. tail -F

```bash
* *  *   *   *     java -jar /home/user/nombre-del-jar.jar >> /home/user/tarea_programada.log
```

## Deteniendo la calendarización

```bash
crontab -e
```

Y eliminamos la línea o la comentamos con `#`. Obtendremos nuevamente éste mensaje:

```
crontab: installing new crontab
```


## Material

- [Repaso de Observer](https://gist.github.com/flbulgarelli/142210fd84d13e9df8f9d0290215bebd)
- [Que Me Pongo Sexta Iteración](https://docs.google.com/document/d/1NxqhJj70kt-_4aw-CawlISdJZyedzoOcLAVJAZVZISE/edit): Punto bonus.
   - Esta es una posible [puesta en común](https://drive.google.com/file/d/1JPWEYqw0a_ylqq2zF3zLa2SscGqPFPGg/view?usp=sharing).
   - Esta es otra [puesta en común, que incluye el punto bonus](https://github.com/flbulgarelli/qmp6)
- [Presentación utilizada](https://docs.google.com/presentation/d/1ZSxNDDsTcsi26ZvX69ysqdwmZ_NH_OW3EC7loYpZGSc/edit)
- [Apunte sobre el patrón Observer, caso práctico](https://docs.google.com/document/d/1h8Cce8faTG65RXoElPvAsPS-I8H2MxMbemzMcYCL56I/edit)
- [Sobre los efectos del Observer](https://docs.google.com/document/d/1UwTcRLugqDgZuqfWvOxckwk27UBjDo70AF1znzX24QM/edit#heading=h.y04j3mise0wn)

## Material complementario

- [Patrones de Diseño](https://www.utnianos.com.ar/foro/attachment.php?aid=3577)
- Observer, página 269


## Para la próxima clase

- Releer los apuntes de [Observer, caso práctico](https://docs.google.com/document/d/1h8Cce8faTG65RXoElPvAsPS-I8H2MxMbemzMcYCL56I/edit), [Repaso de Observer](https://gist.github.com/flbulgarelli/142210fd84d13e9df8f9d0290215bebd) y [Sobre los efectos del Observer](https://docs.google.com/document/d/1UwTcRLugqDgZuqfWvOxckwk27UBjDo70AF1znzX24QM/edit#heading=h.y04j3mise0wn). Es importante hacerlo dado que es un patrón complejo que requiere tiempo para que asiente.
- Ver [¿Por qué me vigilan si no soy nadie?](https://www.youtube.com/watch?v=NPE7i8wuupk), una charla que sirve como puntapié para entender el vínculo entre eventos, extractivismo de datos y  vigilancia digital.
- Ver [Diseño y metodologías de desarrollo](https://docs.google.com/document/d/11PQO8NPSOV4SW0ZwtFsh4RCtWubuEBV6E5qPicqJNKs/edit)
- Leer [el enunciado de Noodle](https://docs.google.com/document/d/1-Qpv38kB29lNuzIi88TkTg4LGbO_iNijoVesZyvG5wM/edit#heading=h.3sssitpwxf4t). Idealmente, comenzar a pensar una solución.
