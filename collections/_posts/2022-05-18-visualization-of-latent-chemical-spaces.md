---
title: Visualizing Latent Chemical Spaces
author: Michael Chary
layout: post
modified: 2022-04-16
date: 2020-04-16
tag: [latent spaces] 
excerpt: Visualization of Latent Spaces
---


#### Background 
Class activation maps are an overlay of two heat maps. One represents the input to a convolutional neural network (CNN). The other, the extent to which activity in that part of the image contributes to activation of one unit in the final layer of the CNN. The meanings of the word _activity_ and phrase _part of the image_ are clear when the input and class activation map share the same natural representation. But, what if the input is a molecular structure, that is converted into a 2D matrix? 

#### Objective: 
Develop a class activation map extension for molecular structures. 




#### Related Notebooks
1. [Class Activations Maps]({% post_url 2022-01-22-class-activation-maps%})

#### (My) Related Research
1. [Analysis of Latent Spaces]({{ site.base_url }}/ann_latent_reps_drugs)

#### Bibliography
{% bibliography --file not-my-works --cited %}