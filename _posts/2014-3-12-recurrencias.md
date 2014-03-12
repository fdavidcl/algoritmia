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

Las `$k$` condiciones iniciales determinarán la solución particular que se está buscando.