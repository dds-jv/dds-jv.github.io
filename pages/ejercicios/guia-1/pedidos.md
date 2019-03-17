---
layout: page
title: "Caso de Uso: Pedidos"
description: Ejercicio de la Guia 1
permalink: /ejercicios/guia-1/pedidos/
---
# Enunciado
Cada vez que se recibe un pedido se controla que haya stock de las mercaderías que forman parte de cada línea del pedido. En ese caso se asigna una salida de material a cada producto, relacionándolo con un pedido. Si el producto queda por debajo del stock mínimo para operar se notificará al Supervisor de Abastecimiento. Mientras tanto se chequea la validez del medio de pago. Si el pago es válido pero no hay productos en stock, el pedido queda “En Espera” hasta la llegada de la mercadería.

**Si el pago no es válido, todo el pedido se cancela.**

Se pide:
1. Realizar el diagrama de actividad de este caso de uso.
2. Realizar un diagrama de transición de estados para el Pedido y para el Producto.