---
layout: chapter
title: Heurísticas Greedy
---

### [Coloreo de grafos](http://algo2.iti.kit.edu/vanstee/courses/vcolor.pdf)

### Travelling Salesman Problem
El problema es encontrar un **circuito hamiltoniano minimal**, dado un grafo no dirigido y una matriz de distancias.

Por mucho que diga la profesora, la heurística "vecino más cercano" no es el algoritmo de Prim, este último encuentra el árbol minimal y en este problema no buscamos árboles.

### El problema de la mochila
Sean $n$ objetos con pesos `$w_i$` y una mochila con capacidad $M$. Al meter una fracción `$x_i$` del $i$-ésimo objeto generamos un beneficio `$p_ix_i$`. El objetivo es rellenar la mochila de forma que se maximice el beneficio que produce el peso total, `$\sum_{i=1}^n p_ix_i$`, con la condición `$\sum_{i=1}^n w_ix_i\le M$`.

**Heurísticas**:

 * Elegir primero los objetos menos pesados para maximizar el número de elementos que caben.
 * Elegir primero los más beneficiosos para maximizar los beneficios. *Variante*: Escoger el objeto tal que la fracción que ocupe sea la más beneficiosa.
 * Elegir los que tengan mejor relación beneficio/peso (`$p_i/w_i$`). (Solución Greedy)

### Asignación de tareas. Algoritmo húngaro
Suponemos que tenemos el mismo número de tareas y trabajadores, `$b_{ij}$` da el costo de asignar la tarea $j$-ésima al $i$-ésimo trabajador. La asignación es válida si hay una tarea por trabajador. El coste de la asignación es `$sum_{i=1}^n sum_{j=1}^n x_{ij}b_{ij}$` con `$x_{ij}$` valiendo 1 si la tarea $i$ se asigna al trabajador $j$ y 0 en otro caso.

#### Algoritmo húngaro
**Ejemplo**:

      1   2   3   4
    a 48  48  50  44
    b 56  60  60  68
    c 96  94  90  85
    d 42  44  54  46

    Restamos el mínimo de cada fila a la fila

      1   2   3   4
    a 4   4   6   0
    b 0   4   4   12
    c 11  9   5   0
    d 0   2   12  4

    Restamos el mínimo de cada columna a la columna, hallamos
    el mínimo número de líneas que consiguen tachar todos los 0.

                  |
      1   2   3   4
    a 4   2   2   0
    b-0---2---0---12
    c 11  7  >1<  0
    d-0---0---8---4-
                  |

    3 líneas => Necesitamos que queden 4 líneas => 
    Restamos el menor número de los que quedan sin tachar,
    sumamos 1 a las intersecciones de las líneas anteriores.

              |   |
      1   2   3   4
    a 3   1   1   0
    b-0---2---0---13
    c 10  6   0   0
    d-0---0---8---5-
              |   |

    4 líneas => Correcto. La asignación se realiza utilizando
    las celdas con ceros: Al trabajador 4 se le asigna la tarea a,
    al trabajador 2 se le asigna la tarea d, al trabajador 1 se le
    asigna b y al 3 se le asigna c.