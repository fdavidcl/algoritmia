---
layout: chapter
title: Resolución de recurrencias mediante ecuación característica
---

### Recurrencias homogéneas
recurrencia homogénea
 : Una recurrencia homogénea es del tipo `$a_0t_n+a_it_{n-1}+\dots +a_kt_{n-k}=0$`.

ecuación característica
 : La ecuación `$$a_ox^k+a_1x^{k-1}+\dots + a_k =0$$` es la ecuación característica de la recurrencia.

#### Caso: Raíces distintas

#### Caso: Raíces múltiples
Si el polinomio característico tiene una raíz múltiple `$r$` con multiplicidad `$m$`, serán soluciones de la ecuación `$$t_n=r^n,\ t_n=nr^n,\dots t_n=n^{m-1}r^n$$` Por tanto, la solución general es una combinación lineal de estos términos y los extraídos de las demás raíces del polinomio característico.

Las `$k$` condiciones iniciales determinarán las constantes de la solución particular que se está buscando.

### Recurrencias no homogéneas
recurrencia no homogénea
 : Una recurrencia no homogénea es del tipo `$a_0t_n+a_it_{n-1}+\dots +a_kt_{n-k}=b^np(n)$`, con `$b$` una constante y `$p(n)$` un polinomio.

La ecuación característica de una recurrencia no homogénea se consigue multiplicando la ecuación resultante de la parte homogénea por `$(x-b)^{d+1}$`. Es decir, la ecuación catacterística queda: `$$(a_ox^k+a_1x^{k-1}+\dots + a_k)(x-b)^{d+1} =0$$` con `$d$` el grado del polinomio `$p(n)$`, resultando de nuevo una ecuación homogénea, que se resuelve de igual forma que las anteriores.

#### Ejemplo: Las torres de Hanoi
La recurrencia que representa el problema de trasladar `$n$` discos de una torre a otra es `$t_n=2t_{n-1}+1$`, con `$t_0=0, \dots t_n = c_1 1^n+c_2 2^n$`. El polinomio característico resultante tiene raíces 2 y 1, donde el factor `$x-1$` proviene del lado izquierdo y el factor `$x-1$` proviene de la constante. La solución general de la recurrencia es por tanto `$t_n=c_1 1^n+c_2 2^n$`. Con las condiciones iniciales, se obtiene la solución `$t_n=2^n-1$`.

### Generalización
Sea 
`$$a_0t_n+\dots +a_kt_{n-k}=b_1^n p_1(n) + b_2^n p_2(n) + \dots$$`
donde las `$b_i$` son constantes distintas y `$p_i$` son polinomios en `$n$` de grado `$d_i$`. La ecuación característica es 
`$$(a_ox^k+a_1x^{k-1}+\dots +a_k)(x-b_1)^{d_1+1}(x-b_2)^{d_2+1}\dots=0$$`