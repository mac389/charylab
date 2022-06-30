---
title: Named Entity Linking in Python
author: Michael Chary
layout: post
date: 2022-06-25
tag: [python, nlp] 
excerpt: NEL in Python
modified: 2022-06-26
parse_block_html: true
---

To link mentions in a corpus with what they signify one has to:
1.  recognize those mentions as named entities (Named Entity Recognition)
2.  map those named entities to a standardized identifiers (Named Entity Linking). 

In my [project]({% link _pages/dnp.md %}) on understanding DNP toxicity I this named entity linking will help me separate effects mentioned online by using a knowledge base to adjucate each effect as biologically plausible or not. 

My initial attempt failed miserably so now I'm following [SpaCy's v3 NEL tutorial](https://github.com/explosion/projects/tree/v3/tutorials/nel_emerson){:target="_blank"}.

To link entities, one has to first be able to recognize them. 
Thanks to Ali, we have 2 NERs to chose from, a statistically-based one and a rule-based one, both based on his curation of 600 posts from 5 online forums (manuscript under review). We'll make the code public once the manuscript is published. 


SpaCy defines two workflows, `all` and `training`. `all` downloads the external assets then runs all the steps in `training`. Following their [YML](https://github.com/explosion/projects/blob/v3/tutorials/nel_emerson/project.yml){:target="_blank"}:
1. `all` invokes `setup` and `download`. 
	1. `setup` installs the package requirements, which currently only requires `google-cloud-storage.` We'll ignore that dependency because we'll use local storage instead. 
	1. `download` installs a model with pre-trained vectors and an NLP pipeline with an NER component. The full pipeline is `["sentencizer","entity_ruler","ner","entity_linker"]`

1. Both `all` and `training` use: 
	1. `kb`  - creates the [knowledge base](#knowledge-base) and writes it to file
    1. `corpus`
    1. `train`
    1. `evaluate`

We need 2 annotated corpora, one two train the NER, 
Manually annotated with Prodigy. 

```python 

nlp = spacy.load(os.path.join('..','data','nel-training','model-last'))
#Should name the models better
print(nlp.pipe_names)

```

#### Knowledge Base 
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

Following SpaCy's workflow we, then, define our own workflows. 

| Workflow | Steps |
| --- | --- |
| `Start` | `Setup` &rarr; `Download` |
| `Preprocess` | `Corpus` &rarr; `Training Data` or `Testing Data` |
| `Stat Model Training` | `Training Data` &rarr; `Tokinization` &rarr; `Annotation` &rarr; `Train Model` &rarr; `NER` |
| `Stat Model Process` | `Testing Data` &rarr; `NER` &rarr; `Entities Doc` |
| `Rule Model Process` | `Testing Data` &rarr; `NER` &rarr; `Entities Doc` |
