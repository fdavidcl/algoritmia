---
layout: chapter
title: Backtracking y Branch&Bound
---

Supongamos que tenemos que seleccionar una solución de entre una gran variedad de opciones
donde no tenemos suficiente información para saber qué elegir.

Para poder aplicar *Backtracking*, la solución debe poderse expresar como una n-tupla `$(x_1,\dots x_n)$`
en la que `$x_i$` se elige de un conjunto finito `$S_i$`. Se suele tratar de maximizar o minimizar una función
criterio, `$P(x_1,\dots x_n)$`, o bien todos los vectores que satisfagan $P$. Un algoritmo de backtracking
asegura la solución óptima.
