---
title: "Chary Lab - Research"
layout: textlay
excerpt: "Chary Lab -- Research"
sitemap: false
permalink: /jarvis/
parse_html_block: false
---

> Thank you for listening to my talk at ACMT. Here are the [slides](../pdfs/2024.acmt.presentation.jarvis.pdf){:target="\_blank"}. Please check out the rest of my [research](/research/)

#### Introduction

Social media provide a ubiquitous and readily accessible stream of real-world data. We have shown that social media activity predicts nonfatal opioid use {% cite chary2017epidemiology --style _bibliography/citep %}, identifies patterns of combination of novel psychoactive substances{% cite chary2018candyflipping %}, and identifies dose-effect associations of rare ingestions.

A key limitation of these analyses is that they do not assess whether the variables under study causally interact. A crucial element of pharmacological investigations is the dose-response curve, which provides phenomenological evidence that a substance mediates a certain effect. If we could extract dose-effect associations from social media, we could directly compare these real-world data with those from more controlled investigations and, ultimately, infer results about substance efficacy from real-world data with the confidence now reserved for controlled trials.

The goal of this project is to develop a method that extracts dosage information from social media.

#### Introducing Jarvis

_Jarvis_ is a combination of rules-based and unsupervised learning. We begin with rule based on human communication[^1]

#### The Roadmap

<!-- ```mermaid -->
<!--    graph LR -->
<!--         A B -->
<!-- ``` -->

1. Extract Doses from Online Commentary (\*We Are Here)
1. Extract Associated Effects
1. Estimate Dose-Effect Associations, the Social Media analog of Dose-Response Curves

#### The Code Repository

The Python code underlying Jarvis is in a private GitHub repository. Please contact us for access[^2].

#### Bibliography

{% bibliography --file all-my-works --cited_in_order %}

---

[^1]: Link to white paper coming soon.
[^2]: Submission form coming soon,.
