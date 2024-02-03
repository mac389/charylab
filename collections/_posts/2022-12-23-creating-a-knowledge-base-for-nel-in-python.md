---
title: Creating a Knowledge Base for NEL in Python
author: Michael Chary
layout: post
date: 2022-12-23
tag: [python, nlp] 
excerpt: NEL in Python
modified: 2022-12-23
parse_block_html: true
---

#### Table of Contents
* TOC
{:toc}

#### Introduction
For named entity recognition in SpaCy, the knowledge base is the thing to which entities in a specific text are linked. SpaCy assumes a format 

```bash
#QID,identifier,description
"Q312545","Roy Stanley Emerson","Australian tennis player"
"Q48226","Ralph Waldo Emerson","American philosopher, essayist, and poet"
"Q215952","Emerson Ferreira da Rosa","Brazilian footballer"
```

#### Mathematical Formulation 

Let $\textrm\{proj\}\_s\{w\} $ denote the embedding (projection) of a word $w$ into space $s$. 

Let $t$ denote a token and denote the tokens that describe an entity, $ e_i \in \left\\{e\right\\}$ by $ \left\\{t\right\\}^\left\\{e_i\right\\}$.

SpaCy will suggest that entities $\left\\{e_i\right\\}$ should be linked with $w$ if $\|\textrm\{proj\}\_s\{w\} - \bar\{\textrm\{proj\}\_s\{t_i\}\}\| < \epsilon $. 

The bar denotes the average. The summation is implied over all $\left\\{t_j\right\\}$ 

#### Construction of Descriptions 
As the [mathermatical formulation](#mathematical-formulation) the performance of the `ner` module hinges on
1. constructing adequate descriptions. 
2. being able to fully embed those descriptions

The word _descriptions_ is ambiguous. For SpaCy, it means synyonyms and context in the form of associated tokens. It does not mean anything approaching a definition, concordance, or etymology of that term. 

Our entry for DNP might be thus
```bash
#tab-separated values
#id 	alias	description
 n	DNP			DNP, 2,4-dinitrophenol, weight loss agent, uncoupler of oxidative phosphorylation, phenolic, fat burner, fatburner ...	
 n  2,4-DNP     ditto
 n  2,4-dinitrophenol	ditto
```

Each alias for an entity contains the same description. 
Each description begins with an enumeration of all aliases and then provides synonyms and closely related words. 

We assemble our preliminary list by creating a tsv file with two columns an index, and all the sign and symptoms from our curated data sets. 
```bash

ENTITIES=./data/kb/dnp.entities.draft.tsv
touch ${ENTITIES}

for file in ./data/bb.corpus.deduplicated.cleaned.reconciled.ner.*.jsonl
do
	echo $file
	jq -r '.spans[].text | select( . != null)' $file >> ${ENTITIES}
done 

```


