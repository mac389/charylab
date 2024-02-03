---
title: "Structural Analysis of Novel Psychoactive Substances"
layout: textlay
excerpt: "Structural Analysis of Novel Psychoactive Substances"
sitemap: false
permalink: /nps_structure/
parse_block_html: true
---

> Thank you for visiting my [2023 EAPCCT Poster]({% link images/poster_presentations/nps.poster.pdf %}){:target="\_blank"}

#### Background

Novel Pyschaoactive Substances (NPS) emerge too quickly for one-by-one characterization in the lab. However, people readily reports NPS usage online. A limitation of inferring usage from social media is the difficulty in identifying online posts that report authentic usage. One approach is to prioritize disussions that mention substances that share structural features with compound that are known to be biologically active.

**Goal of Current Project**: Determine whether a computational approach could identify structural similarities between posited NPS and approved therapeutics.

#### Methods

We downloaded the names of all therapeutics approved by the Food and Drug Administration (FDA) as of Sep 1, 2022 and all designer drugs with reported GC-MS assays or Wikipedia entries. For each therapeutic we acquired the SMILES-formatted linear structure from PubChemPy. We used Wikipedia if the substance had no SMILES structure listed in PubChemPy. To identify groups of compounds with similar structures, we performaned k-means clustering on the compounds' pairwise Tanimoto similarities. We calculated the fraction of FDA-approved substances to NPS one in each cluster. To identify motifs shared between FDA-approved substances and NPS, we performed k-means clustering on the t-Distributed stochastic neighbor embedding of the Morgan fingerprint for each compound.

1. [Morgan Fingerprint](https://www.rdkit.org/docs/GettingStartedInPython.html)
1. [Tanimoto Similarity](https://en.wikipedia.org/wiki/Chemical_similarity)

Related Notebooks:
