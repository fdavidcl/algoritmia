---
layout: chapter
title: Búsqueda y ordenación con Divide y Vencerás
---

### Algoritmos de búsqueda

#### Búsqueda secuencial
La búsqueda secuencial toma un tiempo `$\Omega(n)$` en el peor caso y `$O(1)$` en el mejor. Sin embargo, no es más eficiente cuando se busca en una lista ordenada.

#### Búsqueda binaria
Consiste en tomar una lista ordenada y dividirla por la mitad, tomando cada vez la mitad en que sepamos que debe estar el elemento buscado. La eficiencia de este algoritmo es `$T(n)=c_1log(n)$`, de hecho es `$\Theta(log(n))$`.