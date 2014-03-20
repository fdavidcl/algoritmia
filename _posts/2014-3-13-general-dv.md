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

### Aplicaciones

#### Multiplicación de enteros grandes
Suponemos $n=2m$. Tratamos $x$ e $y$ como dos strings de $n$ bits y los partimos en dos mitades como $x=a\times b$, $y=c\times d$, de forma de las concatenaciones de $a$ y $b$, y $c$ y $d$ recuperan $a$ y $b$ respectivamente. Al ser números binarios los expresamos como
$$x\times y=(a\times 2^{n/2}+b)(c\times 2^{n/2}+d)=ac2^n+(ad+bc)2^{n/2}+bd$$
Así, reducimos el cálculo de $xy$ a la multiplicación de números de $n/2$ bits u algunas sumas y desplazamientos, pero no mejoramos la eficiencia. Si expresamos en su lugar:
$$x\times y=ac2^n + ((a-b)(d-c)+ac+bc)2^{n/2} + bd$$
Entonces se repiten multiplicaciones que solo es necesario hacer una vez y este algoritmo sí resulta ser más eficiente, dando la recurrencia $3T(\frac{n}{2})+kn \in O(n^{log(3)})$.

**Ejemplo**: `$$5678\times 4321=(56\times 10^2+78)(43\times 10^2+21)=$$ $$=56\times 43\times 10^4 + (56\times 21 + 43\times 78)10^2 + 78\times 21=\dots$$`

#### Multiplicación de matrices cuadradas: Método de Strassen
La definición del algoritmo de multiplicación de matrices es `$C_{ij}=\sum_{k=1}^n A_{ik}B_{kj}$`. Si el tamaño de las matrices es $2n\times 2n$, podemos reducir el caso a 7 multiplicaciones de matrices de tamaño $n$ y algunas sumas y restas. La recurrencia resultante es $T(n)=7T(\frac{n}{2})+bn^2 \in \mathcal{O}(n^{log(7)}$.

#### [Multiplicación de polinomios](http://www.cse.ust.hk/~dekai/271/notes/L03/L03.pdf)

#### [El problema del skyline](http://stackoverflow.com/questions/1066234/the-skyline-problem)
Al mostrar gráficos 3D por pantalla es necesario calcular la parte de los objetos que es visible al usuario y renderizar únicamente estos. Un caso particular es el que le da nombre al problema, el de dibujar un *skyline* a partir de una lista de edificios.

![http://imgur.com/SnSjn.gif](http://imgur.com/SnSjn.gif)

Se tendrá un caso base y se dividirá la lista de edificios en listas de tamaños que sean potencias de dos, de forma que se puedan crear trozos del skyline y más tarde se combinen, tomando en cada punto el mayor valor de la altura (ya que solo hay que mostrar la silueta del skyline).

#### El elemento mayoritario
Dado un vector, un elemento es mayoritario si aparece $\frac{n}{2} + 1$ veces. El problema es encontrar el elemento mayoritario de un vector sin ordenarlo. Para ello, se parte el vector por la mitad y se llama al algoritmo sobre ellos, mezclando los resultados de forma similar a *mergesort*. Por el principio del palomar, un elemento es mayoritario $\Leftrightarrow$ es mayoritario en la mitad izquierda o en la derecha.