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
            return insertsort t
        else
            o = [
                mergesort t[0..(t.length/2)],
                mergesort t[(1+t.length/2)..(t.length-1)]
                ].flatten
        end
    end

donde m es el valor tal que cuando el tamaño del array es menor que m, la inserción es más rápida.

#### Quick sort




