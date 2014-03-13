---
layout: chapter
title: Método general Divide y vencerás
---

Divide y Vencerás es una técnica que consiste en:
* dividir el problema `$P$` en varios subproblemas `$P_i$`
* *vencer* los subproblemas
* combinar las soluciones `$S_i$` de los subproblemas para obtener la solución `$S$` del problema inicial.
Este enfoque se suele utilizar de forma recursiva para confeccionar soluciones eficientes para problemas que se pueden reducir a versiones más pequeñas del mismo problema.

La eficacia de esta técnica dependerá de si el problema puede descomponerse, que los problemas que resulten de la división sean de la misma naturaleza y que tenga sentido integrarlas para conseguir la solución del problema total.

#### Ejemplo
Si tenemos un problema con un algoritmo cuadrático y dividimos el problema en 3 subproblemas de tamaño `$n/2$`, obtenemos una solución para el problema grande del orden de `$\frac{3}{4}$` del algoritmo inicial.

### Determinación del umbral
Las recurrencias que se obtienen con Divide y Vencerás con del tipo:
`$$T(n) = t(n)\ si n < n_0;\ 3t_c(n/2)+t(n)\ en\ otro\ caso$$`

El umbral, `$n_0$`, se determina en función del problema original. Hay dos casos extremos que se pueden dar:
* Si `$n_0 = +\infty$` no se aplicará la técnica nunca, sino que se resolverá el problema mediante el algoritmo básico siempre.
* Si `$n_0 = 1$`, se aplicará el algoritmo básico únicamente para el caso del problema más pequeño y en general se utilizará la forma recursiva.

#### Método experimental
* Implementamos el algoritmo básico y el algoritmo Divide y vencerás.
* Resolvemos para distintos valores de `$n$` con ambos algoritmos.
* Conforme el tamaño aumente, es de esperar que el algoritmo básico se vuelva más lento y el algoritmo DV lo mejore.

#### Método teórico
Se igualan las ecuaciones que nos dan el tiempo de ejecución de ambos algoritmos, para comprobar para qué valor de `$n$` se cruzan.