---
modified: 2024-09-15
tag: [informatics]
excerpt: Computable Phenotypes
layout: post
title: Computable Phenotypes
date: 2021-04-03
---

A **computable phenotype** is a set of criteria that can be used to identify a patient population of interest. Most often geared towards extracting date from health information exchanges of electronic medicacl records, these criteria are typically structured data, such as laboratory values, medications, or diagnoses. Similar to publishing a protocol, the goal of formalizing the study population as a computable phenotypes is to  identify the study population in a consistent and reproducible manner.

Computable phenotypes, classically, are all-or-nothing. A patient has the computable phenotype if they fulfill all the criteria. Otherwise, they do not have thte phenotype. There is no partial credit. In my opinion, risk-stratification models are a way to discover computeable phenotypes, if one accepts that the regression coefficients limn fuzzy boundaries around the phenotype. Or the boundaries can become definite by thresholding. 
