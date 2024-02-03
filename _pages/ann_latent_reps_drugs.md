---
title: "Latent Representations of Chemical Activity"
layout: textlay
excerpt: "Latent Representations of Chemical Activity"
permalink: /ann_latent_reps_drugs
---

#### Overall Goal
Determine whether the intermediate representations of convolutional neural networks identify molecular motifs whose importance was not previously appreciated. 

#### Background. 

{% cite hirohara2018convolutional --file not-my-works -s apa %} demonstrated that a convolutional neural network trained on the <a href="https://en.wikipedia.org/wiki/Simplified_molecular-input_line-entry_system">SMILES</a> representation of a molecule
1. could classify that molecule as toxic or not
1. developed a latent representation ("fingerprint") of toxicity 

- Neural Networks 
- Latent representaions. 
- [Visualizing Latent Representations]({% post_url  2022-05-18-visualization-of-latent-chemical-spaces %})
- Social Media as a Data Source. 

#### Approach 

1. [**Specific Aim 1: Extract Names, 2-Dimensional Structures, and Effects from Social Media of Novel Psychoactive Substances**](#specific-aim-1) 
2. [**Specific Aim 2: Train a Convoluational Neural Network to Classify Substancts as Belonging to 1 of 5 Classes of Novel Psychoactive Substances**](specific-aim-2)
3. [**Specific AIm 3: Assess how (2) classifies and represents (1)**](specific-aim-3)

#### Specific Aim 1

- We developed a custom named entity recognizer using the Python plugin SpaCy.  **How train, test, validate it?**

#### Specific Aim 2

- We extended Hirohara et al. **How test and validate it? How introspect latent representations?**
  - [x]  Ported from Chainer (name?) to Keras. 
  - [x]  Developed visualization module
  - [ ]  Reproduced their published results

To train the CNN, I developed a library of chemical substances ([Extended Discussion]({% post_url 2022-05-30-creating-a-library-of-chemical-structures %}))

**Creation of Library**<br> 


#### Specific Aim 3 

- We did this. **How validate it?**

  
#### Bibliography
{% bibliography --file not-my-works --cited %}