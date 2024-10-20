---
title: Computing Plausibility of Substance-Effect Asociations Described Online
author: Michael Chary
layout: post
date: 2022-06-25
tag: [python, knowledge representation] 
excerpt: Computing Plausibility
modified: 2022-06-30
parse_block_html: true
---

#### TODO:
1. Read [Applying Bradford-Hill in the Modern Era](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4589117/)
1. Make Clickable Map for [Computation](#the-computation).
1. Read [the druggable schizophrenia genome](https://www.nature.com/articles/s41525-022-00290-4)
1. 

To identify which substance-effect associations mentioned online can be used to generate hypotheses it is immportant to demonstrate that the association is _specific_ and _plausible_. I use these terms as they are used in the [Bradford-Hill Criteria]({% post_url 2022-05-18-bradford-hill-criteria %}){:target="_blank"}. 

The more specific the association between two tokens, A and B, the more often B occurs whenever A occurs and doesn't occur unless A occurs. In a limited domain of discourse, [tf-idf](https://en.wikipedia.org/wiki/Tf%E2%80%93idf) does well in identifying the specificity of association after correcting for baseline rates (**citation needed**). The main difference between tf-idf and dimension reduction on a covariance matrix is the _idf_ component. Tf-idf weights each entry by the number of documents the token appears in. This provides a more context-relevant scaling than subtracting a measure of central tendency from the tf term at the expense of making it impossible to compare absolute tf-idf scores across corpora. 

The more plausible an association between two tokens, A and B, are, the more the association between A and B can be explained in terms of accepted knowledge (_e.g._, things one would find in a knowlwedge base). Right off the bat we can anticipate that all computational of plausibility are preliminary because the knowledge base is incomplete, at least until the [last question](https://www.physics.princeton.edu/ph115/LQ.pdf) is answered. Said another way, computations of plausibility are necessarily limited by the open world assumption. In this notebook, I discuss computing plausibility in terms of fractional overlap of gene targets. See [Alternative Approaches](#alternative-approaches-to-computing-plausibility) for approaches that use additional information, like network structure, that provide more information but are also less available. 


We start with the following resources:

| Resource | Role | (n)| 
| -- | -- | -- | 
| [KEGG](https://www.genome.jp/kegg/) | Map Substance to Signal Transduction Cascade| |
| [DrugBank](https://go.drugbank.com/) |Maps Substances to Biochemical Targets| 14,594 |
| [GO](http://geneontology.org/) | Map Biocheimcal Intermediary to Effect|  |
| [DisGeNet](https://www.disgenet.org/home/)| Maps Gene Target to Clinical Phenotype | 441 (for OUD or PTSD) |
| | | |

#### Overview

```mermaid
flowchart TD
	subgraph Statistic[Similarity of Gene Profile]
		direction LR
        A[Drugs froms Social Media<br>In Drug Bank with Known Targets] --> B[Genes of Drug Targets]
		B --> C[Co-expressed Genes] & D[First Neighbors of Drug]
		C & D --> E[Expanded Gene Set]
        E --> F[<p align='left'>Jaccard Similarity Between Expanded Gene Set<br> and Genes Differentially Expressed in PTSD, OUD, or Both]
	end
    subgraph Significance[Calculation of Significance]
        direction LR
       a[Drugs in DrugaBank with Known Targets]
       a --> b[Calculate Jaccard Similarity for Their Expanded Gene Sets]
       b --> c[Create Empirical Probability Density Function]
       b --> d["<p align='left'>Identify Median Jaccard Similarity for Currently Approved PTSD, OUD Therapeutics: <li align='left'>ROC Curve  <li align='left'>(Is there a Deault Network?)"]
    end

    Statistic --> Significance
```



| (+) Controls | (-) Controls | 
|:--:|:--:| 
| Methadone <br> Yes| Aspirin| 
| | |

#### The Computation
I obtained the XML dump of DrugBank (current as of March 2022) from DrugBank, licensed for academic use. I converted the XML to a JSON array using [xmltodict](https://pypi.org/project/xmltodict/) and then imported the array into a MongoDB server. Even though DrugBank provides an XSD, I found MongoDB faster and more intuitive than XPath. 

I obtained the genes that were direct targets of methadone with the following query (example is for methadone):
```bash
> db.drugs.aggregate([{$match:{"name":"Methadone"}},{$project:{_id:0,"name":"$targets.target.name","gene-name":"$targets.target.polypeptide.gene-name"}}])


 # "{"name" : [ "Mu-type opioid receptor", "NMDA receptor", "Delta-type opioid receptor", "5-hydroxytryptamine receptor 3A", "Neuronal acetylcholine receptor subunit alpha-7", "Neuronal acetylcholine receptor subunit alpha-3", "Neuronal acetylcholine receptor subunit alpha-4", "Neuronal acetylcholine receptor subunit beta-2" ], "gene-name" : [ "OPRM1", [ "GRIN1", "GRIN2A", "GRIN2B", "GRIN2C", "GRIN2D", "GRIN3A", "GRIN3B" ], "OPRD1", "HTR3A", "CHRNA7", "CHRNA3", "CHRNA4", "CHRNB2" ] }


# Not sure why a nested list was returned. 
```

Let's use [Enrichr](https://maayanlab.cloud/Enrichr/) ([API](https://maayanlab.cloud/Enrichr/help#api)) to identify the 100 most commonly co-exressed genes. For methadone this created a set of 1400 genes, of which 994 were unique and has 2 genes overlapping, OPRM1, which we knew and GAL, a gene that encodes for galanin and galanin-map associated peptide. Indeed [this article](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6597226/) suggest that heteromers between the receptor for galanin and the opioid receptors may attenuate the addictive potential of methadone. [This paper](https://pubmed.ncbi.nlm.nih.gov/34023414/) suggests that galanin modulates stress reactions.  The idea


Then we ask KEGG what human pathways those genes are implicated in 

DisGeNet provides a [REST API](https://www.disgenet.org/api/). I queried the API for PTSD (CUI:C0038436) and OUD (CUI:C4324621), which returned 441 genes. 

```python
#import requests
PTSD = "C0038436"
OUD = "C4324621"
diseases = f'{PTSD},{OUD}'

if api_key:
    s.headers.update({"Authorization": "Bearer %s" % api_key}) 
    gda_response = s.get(f'{api_host}/gda/disease/{diseases}', params={'source':'ALL'})
if s:
    s.close()


```

I imported the JSON array into MongoDB so queries could reference both data sets. 
We can now compute the fraction of targets for a drug of interest that lie in the intersection of OUD- and PTSD-associated genes. 

An alternative approach would be to export the gene names for each condition to a text file. This worked for PTSD and OUD. In bash, one can compute the intersection as `sort OUD.txt PTSD.txt | uniq -d` if we treat gene expression as a categorical variable. 

```bash 
sort OUD.txt PTSD.txt | uniq -d
# BCHE, BDNF, C1QL1, CRH, GAL, HCRT, IL10, IL6, MET, OPRM1, PSS
```

| Condition | Genes | 
| Methadone |  OPRM1, GRIN1, GRIN2A, GRIN2B, GRIN2C, GRIN2D, GRIN3A, GRIN3B, OPRD1, HTR3A, CHRNA7, CHRNA3, CHRNA4, CHRNB2 | 
| PTSD & OUD | BCHE, BDNF, C1QL1, CRH, GAL, HCRT, IL10, IL6, MET, OPRM1, PSS |
| PTSD & OUD & Methadone | OPRM1 | 

My interpretation is that there is only one intersection because the Methadone row contains genes of direct targets, but the PTSD & OUD row contains genes for intracellular components. To add genes for intracellular components for (_i.e.,_ downstream effectors of) the direct targets of Methadone. Luckily, [this post](https://keggscape.readthedocs.io/en/latest/drugtarget.html){:target="_blank"} describes exactly how to do that.

First, download the ids of all targets.
```bash
curl -Lfv -o filename.zip -u $username:$password https://go.drugbank.com/releases/5-1-9/downloads/target-all-polypeptide-ids -vs > ./external/drugbank_targets .txt 2>&1

wget http://rest.kegg.jp/conv/eco/uniprot 
mv uniprot ./external uniprot kegg_uniprot_ids.tsv
```` 
My file structure now looks like. 
```bash

tree -d 
.
├── Area 51
└── external
```
A peak at the files: 
```bash
#we are in the external subdirectory of data/
head -n 3 drug-bank-target-ids.csv | csvlook | less -S #has very long columns
```

| ID | Name | Gene Name | GenBank Protein ID | GenBank Gene ID | UniProt ID | Uniprot Title | PDB ID | GeneCar | ...|
| -- | --------------------------- | --------- | ------------------ | --------------- | ---------- | ------------- | ------ | ------- | ---|
|  1 | Peptidoglycan synthase FtsI | ftsI      |          1,574,687 | L42023          | P45059     | FTSI_HAEIN    |        |        |
|  2 | Histidine decarboxylase     | HDC       |             32,109 | X54297          | P19113     | DCHS_HUMAN    | 4E1O   |        |


```bash
head -n 2 kegg_uniprot_ids.tsv 
up:P0AD86	eco:b0001
up:P00561	eco:b0002
```



#### Alternative Approaches to Computing Plausibility

The goal is to create a graph like the following

```mermaid

	graph 
	subgraph Path Length = 3
	A[Substance] --> B --> C --> D[Effect]
	end 

	subgraph Path Length = 2
	AA[Substance] --> BB[B] --> DD[Effect]
	end 

```

We infer that a path with a shorter length is more biologically plausible than a path with a longer length because the shorter path involves fewer intermediaries and so fewer dependencies on other signal transduction cascades or cellular processes. 

Our corpus lists substance and effects. We assemble a graph by linking (substance, target), (target, target), and (target, effect) pairs. Here _target_ means any biochemical intermediary, such as the target receptor or a carrier protein. 