---
title: Probabilistic Logic Networks & Medical Decision Making
author: Michael Chary
layout: post
date: 2020-06-13
modified: 2020-06-13
tag: [artificial intelligence] 
excerpt: PLNs
---
{% comment %}
Still editing 
{% endcomment %}

I think the solutions to developing explainable artificial intelligence and adding expert knowledge to neural networks over lap. In the former case we want to identify a transformation from the space in which the neural network works to one in which the expert thinks. The former case resembles the inverse transformation. 

It would be nice if the optimum representation the neural network uncovered was the latent space in which the domain expert thinks, but the two are probably not, in general, using the same optimization function. 

I discuss latent space analysis more ([here](./2020-06-11-analysis-of-latent-spaces) and [here](./2020-06-06-Explainable-AI.md)). In this notebook I'll trace a thread from ontologies to probabilistic reasoning. It would be nice for the two threads to converge some day. 

#### Mathematical Preliminaries
The central representation in Probabilistic Logic Networks is 
$$
 w \quad \mathbb{P}\left(\vec{x}\right) \Rightarrow \mathbb{Q}\left(\vec{x}\right)
$$

This states, roughly, that in $$ w $$ possible worlds, given no other information, the conditional holds. 

#### Medical Decision Making 
A central component of medical decision making is the generation and updating of a differential diagnosis. The differential diagnosis (usually shortened to _the differential_) is an list of causes of the patients complaint ordered by the likelihood of each disease occurring. This classical description misses a few crucial points that provide one way to understand a difference in thinking between Emergency Physicians and Internists, Pediatricians, and Intensivists. A refinement is to say that the differential is represents the most likely causes at time $$ t $$ given the appreciated manifestations of the patient's pathology. 

In the Emergency Department the sorting is two-dimensional, considering both acuity and probability. 


#### To Read
* [Neural Markov Logic Machines](https://arxiv.org/pdf/1905.13462.pdf)

#### Other Notebooks


#### Implementation 