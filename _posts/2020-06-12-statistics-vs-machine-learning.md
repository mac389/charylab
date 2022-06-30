---
title: Statistics vs Machine Learning
author: Michael Chary
layout: post
date: 2020-06-12
modified: 2020-06-12
tag: [research methods] 
excerpt: Statistics draws population inference from a sample. Machine Learning finds generalizable predictive patterns
---


[Bzdok et al (2018)](https://www.nature.com/articles/nmeth.4642) used simulated gene expression and RNA-seq counts to illustrates the difference between how classical statistics and machine learning rank the relevance of gene epxression to a phenotype, that is to discover a correlation structure. Their point is that both approaches yield similar results, but the machine learning approach is more scaleable because it makes no assumptions about the process that generates gene expression levels. 

The authors suggest that scalability comes at the expense of model interpretability. As [Thiagarajan et al. (2020)](https://arxiv.org/pdf/2004.14480.pdf) demonstrate [related notebook](./2020-06-06-Explainable-AI.md) there are ways to visualize the latent space the model constructs. One can relate that model structure to biological knowledge. Here is an early example of principal components analysis to identify [different pathways for sensitivity or resistance to apoptosis](https://www.pnas.org/content/97/6/2680/tab-figures-data).

With a latent space analysis, or some way to introspect the model, the main difference to me between classical statistics and machine learning is one of scale. Classical statistics work well on groups that are to small to even train a neural network on. 

#### To Read
* [AEM Resident's Perspective on the Role of Machine Learning in AI](https://www.annemergmed.com/article/S0196-0644(19)31465-9/fulltext?dgcid=raven_jbs_etoc_email)

#### Related Notebooks