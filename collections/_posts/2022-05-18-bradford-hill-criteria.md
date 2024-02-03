---
date: 2022-04-10
tag: [causality, biomedical research]
excerpt: Bradford-Hill Criteria
layout: post
modified: 2022-06-27
---

Determing causality is difficult, in part because the word _causality_ has multiple meanings. 
1. Prediction (aka Sufficiency). X causes Y to happen in the sense that if I do X Y happens more than I would expect by chance. 
1. Explanation (aka Necessity). X causes Y to happen in the sense that Y cannot happen without X. This suggests that X is integral to Y's realization. 

In graduate school, I remember being taught that one can say that one thing causes another only if both things are true. Requiring (1) and (2) to both be true is equivalent to enforcing a biconditional. 

$$ 
\begin{aligned}
	X &\rightarrow Y\\ 
   \neg X &\rightarrow \neg Y \quad \textrm{by contrapositive } Y \rightarrow X\\
   & \therefore X \leftrightarrow Y
\end{aligned}
$$

The notation brings out a limitation of this reasoning. It is first-order logic and brooks no conditionality.

#### Bradford-Hill Criteria
The Bradford-Hill Criteria are guidelines that approximate a second-order logic generalization of the above formalism. 

#### To Read:
- [Applying Bradford-Hill in the Modern Era](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4589117/)