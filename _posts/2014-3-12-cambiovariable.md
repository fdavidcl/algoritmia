---
layout: chapter
title: Resolución de recurrencias mediante otros métodos
---

### Cambio de variable

#### Ejemplo
Calcular el orden de `$T(n)$` si `$n$` es una potencia de 2:
`$$T(n)=4T(n/2)+n,\ n>1$$`
Reemplazando `$n$` por `$2^k$`, obtenemos `$T(2^k)=4T(2^{k-1})+2^k,\ n>1$`, que queda como la recurrencia `$t_{2^k}=4t_{k-1}+2^k,\ n>1$`. La ecuación característica es `$(x-4)(x-2)=0$`. Obtenemos tras resolverlo `$$T(n)=x_1n^2+c_2n$$`

#### Ejemplo
Calcular el orden de `$T(n)$` si `$n$` es una potencia de 2:
`$$T(n)=4T(n/2)+n^2,\ n>1$$`
Obtenemos `$T(2^k))=4T(2^{k-1})+4^k,\ n>1 \Rightarrow t_{2^k}=4t_{k-1}+4^k,\ n>1$`. La ecuación característica es `$(x-4)^2=0$`, y por tanto `$$T(n)=x_1n^2+c_2n^2log(n)$$`

#### Ejemplo
Calcular el orden de `$T(n)$` si `$n$` es una potencia de 2:
`$$T(n)=3T(n/2)+cn,\ n>1$$`
La ecuación en recurrencia quedaría `$t_k=3t_{k-1}+c2^k$`. La solución es `$t_k=c_13^k+c_22^k$` y por tanto `$$T(n)=c_13^{log(n)}+c_2n\Leftrightarrow T(n)=c_1n^{log(3)}+c_2n$$`


### Transformaciones de rango
Si tenemos `$T(n)=n(T(n/2))^2,\ n>1$` y `$n$` es potencia de 2, la recurrencia `$t_k=2^kt_{k-1}^2$` no es lineal y además uno de los coeficientes no es constante. Para transformar el rango, creamos una nueva recurrencia poniendo `$V_k=log(t_k)$`, que nos da
`$$V_k=k+2V_{k-1}$$,\ k>0`
con la condición inicial `$V_0=log(T(1))$`.