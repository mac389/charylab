---
title: Class Activation Maps
author: Michael Chary
layout: post
date: 2022-01-22
modified: 2022-04-09
tag: [explainable artificial intelligence, neural networks] 
excerpt: class activation maps
---

### Introduction

In neuroscience, a *receptive field* is the portion of sensory space to which a neuron fires if an appropriate stimulus is presented. Each neuron, for example, in (layer 5 of) the primary visual cortex responds to the orientation of a bar. By mapping the responses across layer 5 to a stimulus and mapping the responses to one layeer 5 neuron across all stimuli, we can understand the relationship between input and neural activity. 

The analogous concept in computational neural networks is a *class activation map*. Computational neural networks have a related term, *discriminative regions*, that they borrowed from machine learning, which corresponds to the *just noticeable difference* in neuroscience. 

### Prior Work
There are posts and articles on how to visualize class activation maps for images. In this post I discuss how to visualize the class activation maps for molecules represented by a SMILES string. 

### Visualization

#### To Read:
1. <a href="https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8236074/">Interpretation and Visualization Techniques for Deep Learning Models in Medical Imaging</a>
1. <a href="https://arxiv.org/pdf/1812.00265.pdf">Discovering Molecular Functional Groups Using Graph Convolutional Networks</a>
