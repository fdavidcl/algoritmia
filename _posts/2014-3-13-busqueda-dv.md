---
layout: chapter
title: Búsqueda y ordenación con Divide y Vencerás
---

### Algoritmos de búsqueda

#### Búsqueda secuencial
La búsqueda secuencial toma un tiempo `$\Omega(n)$` en el peor caso y `$O(1)$` en el mejor. Sin embargo, no es más eficiente cuando se busca en una lista ordenada.

#### Búsqueda binaria
Consiste en tomar una lista ordenada y dividirla por la mitad, tomando cada vez la mitad en que sepamos que debe estar el elemento buscado. La eficiencia de este algoritmo es `$T(n)=c_1log(n)$`, de hecho es `$\Theta(log(n))$`.

### Algoritmos de ordenación

#### Ordenación por mezcla
EL algoritmo *merge sort* aplica Divide y Vencerás particionando de forma equilibrada la lista dada en dos partes y ordenándolas recursivamente mediante el mismo algoritmo, finalmente recomponiendo la lista para obtenerla ordenada. Implementación en Ruby:

    def mergesort t
        if t.length < m
            insertsort t
        else
            [
                mergesort t[0..(t.length/2)],
                mergesort t[(1+t.length/2)..(t.length-1)]
            ].flatten
        end
    end

donde m es el valor tal que cuando el tamaño del array es menor que m, la inserción es más rápida.

#### Quick sort

*Quicksort* o algoritmo de Hoare elige un pivote de forma que los elementos mayores que él se posicionarán a su derecha, y los menores se ubicarán a la izquierda. Después se aplica *quicksort* sobre las dos partes del array (sin el pivote).

**Elección del pivote**: Se suele emplear la mediana de tres elementos del array, o bien se busca el elemento medio del mismo. Es conveniente elegir el pivote de forma que la partición del array resultante sea lo más equilibrada posible, lo que ocasionará un mejor tiempo de ejecución.

El procedimiento que reparte los elementos del array según el pivote toma dos índices y va intercambiando los elementos menores que el pivote con los sucesivos elementos mayores que haya a su izquierda:

    procedure pivot (T [i .. j ] ; var 1)
        p <- T[i]
        k <- i; l <- j + 1
        repeat k <- k + 1 until T[k] > p or k >= j
        repeat I <- l - 1 until T[l] <= p
        while k < I do
            swap T[k] and T[l]
            repeat k <- k + 1 until T[k] > p
            repeat l <- l - 1 until T[l] <= p
        swap T[i] and T[l]