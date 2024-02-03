---
title: Named Entity Linking in Python
author: Michael Chary
layout: post
date: 2022-06-25
tag: [python, nlp] 
excerpt: NEL in Python
modified: 2022-12-23
parse_block_html: true
---

#### Introduction. 
Named entity _linking_ links mentions in a corpus with what they signify. One has to:
1.  recognize those mentions as named entities (named entity *recognition*)
2.  map those named entities to a standardized identifiers (named entity *linking*). 

In my [project on understanding DNP toxicity]({% link _pages/dnp.md %}) I use NE**L** (distinguishing it from NE**R**) to understand social media postings in terms of biomedical knowledge. I view NE**L** as a step along the path converting strings of characters in posts to statements with which one can perform the logical operations such as  inference, deduction, or abstraction.

#### Table of Contents
* TOC
{:toc}


#### Background 

I'm following [SpaCy's v3 NEL tutorial](https://github.com/explosion/projects/tree/v3/tutorials/nel_emerson){:target="_blank"}.

We have a NER module, `ner` we trained on about 4k posts, tested on 1k, updated the model and validated it on another 1k (manuscript/preprint under preparation). `ner` recognizes substances and symptoms[^1]. 

##### Unique Identifiers. 
An important feature of NEL is mapping all mentions of an entity to the standardized representation of that entity. For example, _test_ and _testosterone_ should both be mapped to a universal representation of the concept of testosterone. SpaCy's example uses Wikipedia identifiers. This is not a generalizable approach, but it does work to demonstrate SpaCy's approach to NEL. We use IRIs (Internationalized Resource Identifier)

#### Knowledge Base 

See [here]({% post_url 2022-12-23-creating-a-knowledge-base-for-nel-in-python %}) for a fuller description of creating the knowledge base. 
SpaCy's Knowledge Base is formatted as follows
```bash
#QID,identifier,description
"Q312545","Roy Stanley Emerson","Australian tennis player"
"Q48226","Ralph Waldo Emerson","American philosopher, essayist, and poet"
"Q215952","Emerson Ferreira da Rosa","Brazilian footballer"
```

Ours is formatted as follows. 
```bash
ENTITY,TERMS,STANDRADISED MAPPING TERM,GROUP
Myalgia,Myalgia,Feeling Tired,Fatigue issue
Fatigue,Fatigue,Feeling Tired,Fatigue issue
Gassed,Fatigue,Feeling Tired,Fatigue issue
Exhausted,Fatigue,Feeling Tired,Fatigue issue
```

"identifier" in SpaCy's schema corresponds to "entity" in ours. 


#### Training the Entity Linker. 
The SpaCy example trains on Wikidata. We use our online forum DNP corpus. 


[^1]: `ner` currently is better at recognizing substances and symptoms associated with bodybuilding and DNP use. This predilection reflects its training. 
