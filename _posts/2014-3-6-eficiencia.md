---
layout: chapter
title: Tema 1: Eficiencia
---

### Notaciones asintóticas

#### Notación `$O$`
Se dice que `$f(n)$` es `$O(g(n))$` si existen `$k\in\mathbb{N},\ c\in\mathbb{R}$`
tales que `$f(n)\leq c\times g(n) \forall n\geq k$`.

#### Notación `$\Omega$`
Se dice que `$f(n)$` es `$\Omega(g(n))$` si existen `$k\in\mathbb{N},\ c\in\mathbb{R}$`
tales que `$f(n)\geq c\times g(n) \forall n\geq k$`.

##### Proposición
`$f(n)\in O(g(n)) \Leftrightarrow g(n)\in \Omega(f(n))$`

### Análisis de eficiencia