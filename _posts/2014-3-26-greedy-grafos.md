---
layout: chapter
title: Algoritmos Greedy sobre grafos
---

Veremos dos algoritmos para la búsqueda del árbol generador minimal. Suponemos un grafo conexo `$G=(V, A)$` sobre el que hay definida una matriz de pesos `$L_{ij} \ge 0$`.

### Algoritmo de Kruskal

**Algoritmo**:

1. Ordenar las aristas de forma creciente en costo
1. Tomar la arista más corta
1. Borrar la arista de $E$
1. Aceptar la arista si no forma un ciclo en el árbol parcial, rechazarla en otro caso
1. Repetir en bucle hasta tener `$|V|-1$` aristas correctas.

#### Eficiencia
El algoritmo es `$\mathcal{O}(a\times log(a)) = \mathcal{O}(a\times log(n))$` con $a$ el número de aristas.

#### Aplicaciones
* Diseño de redes físicas
* Solución aproximada de problemas NP
* Distribución de mensajes entre agentes
* Plegamiento de proteínas, reconocimiento de células cancerosas...

### Algoritmo de Prim
Mediante el algoritmo de Kruskal construimos el árbol generador minimal sin atender a la conexión entre nodos, de forma algo caótica. Sin embargo, Prim permite construir el árbol generador minimal de forma natural, comenzando por una raíz arbitraria y a cada paso añadiendo una rama al árbol.

**Algoritmo**:

* Tomamos un nodo raíz arbitrario.
* Mientras el conjunto de nodos utilizados sea distinto del total:
  * Encontrar la arista de mínima longitud tal que conectemos un nodo utilizado con otro no utilizado.
  * Añadir la arista al conjunto de aristas de la solución.

**Usando matriz de adyacencia. Ejemplo:**
Sea la matriz

    0 0 8 4 0 9 0 0 0 0
    0 0 3 0 4 0 0 0 0 0
    8 3 0 4 0 0 0 9 0 0
    4 0 4 0 5 8 0 3 7 0
    0 4 0 5 0 0 0 2 0 1
    9 0 0 8 0 0 0 0 0 0
    0 0 0 0 0 0 0 7 0 8
    0 0 9 3 2 0 7 0 0 0
    0 0 0 7 0 0 0 0 0 0
    0 0 0 0 1 0 8 0 0 0

Si comenzamos por el nodo 1, vemos que el valor mínimo de la primera fila es 4, correspondiente al cuarto nodo. El cuarto nodo lo uniríamos con el 8, ya que tiene peso 3. El 8 se uniría con el 5 (peso 2), y este a su vez con el 10 (peso 1). Ahora unimos el 4 al 3, ya que tiene el siguiente peso mínimo (peso 4). Saltamos del 3 al 2 (peso 3), etc.

#### Eficiencia
El algoritmo de Prim es `$\mathcal{O}(n^2)$` ya que el bucle se ejecuta $n-1$ veces y cada iteración cuesta `$\mathcal{O}(n)$`. En un grafo con una gran densidad de aristas, es preferible usar el algoritmo de Prim al de Kruskal.

### Caminos mínimos. Algoritmo de Dijkstra
El algoritmo de Dijkstra es capaz de encontrar, para un nodo dado, el camino de distancia mínima al resto de nodos.

Dado el nodo inicial y uno final, se va calculando la mínima distancia desde el origen a cada nodo del camino, hasta llegar al final.