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

<pre><code class="ruby">def merge(p, q)
    r = []

    until p.empty? and q.empty?
        if q.empty? or (p.any? and p.first <= q.first)
            r << p.shift
        else
            r << q.shift
        end
    end

    r
end

def mergesort(t)
    if t.length < 2
        t
    else
        p = mergesort t[0 .. t.length/2 - 1]
        q = mergesort t[t.length/2 .. t.length - 1]

        merge p, q
    end
end</code></pre>

donde m es el valor tal que cuando el tamaño del array es menor que m, la inserción es más rápida.

#### Quick sort

*Quicksort* o algoritmo de Hoare elige un pivote de forma que los elementos mayores que él se posicionarán a su derecha, y los menores se ubicarán a la izquierda. Después se aplica *quicksort* sobre las dos partes del array (sin el pivote).

**Elección del pivote**: Se suele emplear la mediana de tres elementos del array, o bien se busca el elemento medio del mismo. Es conveniente elegir el pivote de forma que la partición del array resultante sea lo más equilibrada posible, lo que ocasionará un mejor tiempo de ejecución.

El procedimiento que reparte los elementos del array según el pivote toma dos índices y va intercambiando los elementos menores que el pivote con los sucesivos elementos mayores que haya a su izquierda:

    def pivot (t, l)
        p = t[i]
        k = i
        l = j + 1
        k = k + 1 until t[k] > p or k >= j
        I = l - 1 until t[l] <= p
        while k < I
            t[k], t[l] = t[l], t[k]
            k = k + 1 until t[k] > p
            l = l - 1 until t[l] <= p
        end
        t[i], t[l] = t[l], t[i]
    end

El algoritmo *quicksort* se puede volver muy ineficiente si los arrays sobre los que se llama recursivamente están muy desbalanceados.