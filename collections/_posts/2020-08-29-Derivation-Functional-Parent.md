---
date: 2020-08-29
tag: [ontology]
excerpt: Creating an ontology 
layout: post
title: Derivation, Functional Parent
modified: 2020-08-29
---

I am trying to determine the relationship between two relationships in the Opioid Ontology (NEED TO PUT LINK IN HERE)



ChEBI{% cite degtyarenko2007chebi --file not-my-works %} defines the relationship *has functional parent* as 

> The relationship between two molecular entities (or classes of entities), one of which possesses one or more chacteristic groups from which the other can be derived by functional modiﬁcation.

Wikipedia (implicitly) defines the relationship *is derivative of* as 

> The relationship between two molecular entities (or classes of entities) on of which can be derived from the other by a chemical reaction. 

I cannot imagine a case where there a chemical entity A that has a functional parent B but is not a derivative of B. This suggests that the domain of *is a derivative of* is a subset of the domain of *has functional parent*. I am unclear as to whether these two relationships have overlapping ranges. Perhaps a difference lies in whether the backbone is modified, but I think this is too fine a distintion for a first pass. 

Contemplating the differences between the two led me to the following list of terms:

* Precursor
* Product
* Derivative 

### Bibliography
{% bibliography --file not-my-works --cited %}



