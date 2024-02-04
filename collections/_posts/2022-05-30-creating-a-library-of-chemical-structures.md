---
title: Creating A Library of Chemical Structures
author: Michael Chary
layout: post
modified: 2022-06-01
date: 2020-05-30
tag: [neural networks] 
excerpt: Creating a Library
---

##### Outstanding Questions. 
1. How to quantify the structural heterogeneity of each field?
1. How to distinguish between agonists and antagonists?

#### Goal. 

 For my [Analysis of Latent Spaces]({{ site.base_url }}/ann_latent_reps_drugs) I created a convolutional neural network (_link_) to classify compounds as belonging to drug categories. To obtain the drug categories and their labels.

 The divide between the everyday terminology clinicians use and the formal language of the NDCs can effect observational studies {% cite defalco2013applying --file not-my-works -s apa %}, but our input here is SMILES strings.

#### Creating a Representative Training Set. 
One consideration when creating the training data sets was to have enough samples of novel psychoactive substances so that the relative magnitudes of the fractional classifications would be meaningful. 

Training Set Should Have
1. Comparable Numbers of Compounds from Each Class
1. Comparable Subclasses of Compounds within Each Class (_e.g._, opiates, semisynthetic opioids, opioids, novel opioids)


Classes (Is there a pre-existing classification I could use?). Links to CSV only work if you are a known collaborator for this project. 
1. Opioid ([CSV one](https://github.com/mac389/molecular-cnn/blob/main/data/external/opioids/phase1_oxcatop.csv) and [two](https://github.com/mac389/molecular-cnn/blob/main/data/external/opioids/phase2_oxcatop.csv))
2. Tryptamine ([CSV](https://github.com/mac389/molecular-cnn/blob/main/data/psychoactive-tryptamines-substances-list.csv))
3. Phenethylamine ([CSV](https://github.com/mac389/molecular-cnn/blob/main/data/substituted-and-historic-phenethylamines.tsv))
4. Benzodiazepine([CSV](https://github.com/mac389/molecular-cnn/blob/main/data/benzodiazepine_list.tsv))
5. Beta-blocker ([CSV](https://github.com/mac389/molecular-cnn/blob/main/data/beta_receptor_blockers.tsv))
6. Calcium Channel Blocker ([CSV](https://github.com/mac389/molecular-cnn/blob/main/data/calcium_channel_blockers_training_list.tsv))
7. Cannabinoids ([CSV](https://github.com/mac389/molecular-cnn/blob/main/data/cannabinoids_training_list.tsv))

- [Extended Discussion on DB Creation]({% post_url 2022-06-03-details-on-database-of-molecular-structures %})


Testing sets:
1. Ergolines ([CSV](https://github.com/mac389/molecular-cnn/blob/main/data/ergoline-validation-substances-list.csv))

I used <a href="http://projects.scbdd.com/pybiomed.html">PyBioMed</a> (<a href="https://github.com/gadsbyfly/PyBioMed">Git Hub Repo</a>, <a href="https://pybiomed.readthedocs.io/en/latest/application.html#application-3-prediction-of-drugtarget-interaction-from-the-integration-of-chemical-and-protein-spaces">Tutorial</a>) and <a href="https://chemspipy.readthedocs.io/en/latest/guide/intro.html#obtaining-an-api-key">ChemSiPy</a>. Here is a good <a href="https://www.altexsoft.com/blog/drug-data-openfda-dailymed-rxnorm-goodrx/">overview</a> of the databases describing apporved sustances (_NB_ openFDA might be useful) 


#### Code Narration. 

I used `requests` to query RxNorm. 
```python
import requests
URL = "https://rxnav.nlm.nih.gov/REST/rxclass/classMembers.json"
query = lambda classId: requests.get(url=URL, params={"classId": classId,"relaSource":"ATC"})
```

The keyword `relaSource` refers to the relationship that must hold between the drug and class for a drug to be considered a member of the class. I'm not sure why, but while the source of the relationship has to be specified, the object of the relationship is optional. The <a href="https://lhncbc.nlm.nih.gov/RxNav/APIs/api-RxClass.getClassMembers.html">documentation</a> does not explain this design choice.

| Compound Class | Data Source | 
| --- | --- | 
| Opioids | |
| | | 

#### Resources I used. 

1. Wikipedia: <a href="https://en.wikipedia.org/wiki/List_of_psychedelic_drugs#Serotonergic_psychedelics_(serotonin_5-HT2A_receptor_agonists)">List of psychedelic substances</a>
1. Wikipedia: <a href="https://en.wikipedia.org/wiki/List_of_designer_drugs">List of designer drugs</a>
1. Wikipedia: <a href="https://en.wikipedia.org/wiki/List_of_substances_used_in_rituals">List of substances used in rituals</a>
1. Wikipedia: <a href="https://en.wikipedia.org/wiki/Substituted_phenethylamine">Substituted phenethylamines</a>
1. 

##### Opioids. 
I used the following Resources. 
1. Oxford's <a href="https://www.catalogueofopioids.net/">Catalogue of Opioids</a> {% cite richards2021oxford --file not-my-works -s apa %}

The Wikipedia page, <a href="https://en.wikipedia.org/wiki/List_of_psychedelic_drugs">List of Pyschoactive Substances</a> detailed serotonergic agonists and cannabinoid receptor agonists, which I extracted as

I didn't include the benzofuran derivatives, dimemebfe, also known as 5-MeO-BFE and 5-MeO-DiBF because nither is, structurally, a tryptamine. 

##### Tryptamines. 
I began with the Wikipedia page. I excluded LSD derivatives because they contain phenethylamine. The _D_ stands for diethylamide. I saved them in [filename] because I think they are a good test for the CNN. I expect them to classify LSD and LSD derivatives as partly tryptamine and partly phenethylamine.


#### Cannabinoids
I excluded HU-211 because it binds to NMDA as well as CB receptors. (<a href="https://en.wikipedia.org/wiki/Dexanabinol">Wikipedia</a> suggests it has therapeutic uses.) HU-211 is the enantiomer of HU-210. The structural diversity of cannabinoids could be a second paper. 

#### Bibliography
{% bibliography --file not-my-works --cited %}
