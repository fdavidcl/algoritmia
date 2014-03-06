---
layout: chapter
title: Notaciones asintóticas
---

### Notación `$O$`
Se dice que `$f(n)$` es `$O(g(n))$` si existen `$k\in\mathbb{N},\ c\in\mathbb{R}$`
tales que `$f(n)\leq c\times g(n) \forall n\geq k$`.

#### Propiedades
* `$f(n) + g(n) \in O(max{f(n), g(n)})$` siendo `$max$` la función máximo punto a punto.
* `$f(n) \times g(n) \in O(f(n)\times g(n))$`

### Notación `$\Omega$`
Se dice que `$f(n)$` es `$\Omega(g(n))$` si existen `$k\in\mathbb{N},\ c\in\mathbb{R}$`
tales que `$f(n)\geq c\times g(n) \forall n\geq k$`.

#### Proposición
`$f(n)\in O(g(n)) \Leftrightarrow g(n)\in \Omega(f(n))$`

### Notación `$\Theta$`
Se dice que `$f(n)$` es `$\Omega(g(n))$` si existen `$k\in\mathbb{N},\ c_1, c_2\in\mathbb{R}$`
tales que `$c_1\times g(n) \leq f(n)\leq c_2\times g(n) \forall n\geq k$`.

#### Proposición
`$f(n)\in \Theta(g(n)) \Leftrightarrow f(n)\in O(g(n))\ y\ f(n)\in \Omega(g(n))$`