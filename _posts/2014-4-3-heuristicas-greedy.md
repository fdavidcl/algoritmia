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

**Heurísticas:**

 * Elegir primero los objetos menos pesados para maximizar el número de elementos que caben.
 * Elegir primero los más beneficiosos para maximizar los beneficios. *Variante*: Escoger el objeto tal que la fracción que ocupe sea la más beneficiosa.
 * Elegir los que tengan mejor relación beneficio/peso.