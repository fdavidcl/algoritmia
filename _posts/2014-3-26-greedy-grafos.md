---
layout: chapter
title: Greedy sobre grafos
---

Veremos dos algoritmos para la búsqueda del árbol generador minimal. Suponemos un grafo conexo `$G=(V, A)$` sobre el que hay definida una matriz de pesos `$L_{ij} \ge 0$`.

### Algoritmo de Kruskal

**Algoritmo**:
1. Ordenar las aristas de forma creciente en costo
1. Tomar la arista más corta
1. Borrar la arista de $E$
1. Aceptar la arista si no forma un ciclo en el árbol parcial, rechazarla en otro caso
1. Repetir en bucle hasta tener $|V|-1$ aristas correctas.

El algoritmo es `$\mathcal{O}(a\times log(a))$` con $a$ el número de aristas.

#### Aplicaciones
* Diseño de redes físicas
* Solución aproximada de problemas NP
* Distribución de mensajes entre agentes
* Plegamiento de proteínas, reconocimiento de células cancerosas...