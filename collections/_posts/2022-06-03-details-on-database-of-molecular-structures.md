---
title: Details on Database of Molecular Structures
author: Michael Chary
layout: post
modified: 2022-06-03
date: 2020-06-03
tag: [neural networks, database management] 
excerpt: Details on Database of Molecular Structures
---


##### Database Construction. 

I stored SMILES structures for each class in a MongoDB collection. Each document needed a `SMILES_string` and `identifier` field. There were no constraints on other fields. I created the MongoDB collection as
```json
{"compound_class":[],
 "SMILES_string":"",
 "identifier":""}
```

A simple way to extend `identifier` is to abstract it to a dictionary
```json
{
	"type":"@identifier",
	"value":"",
	"format":""
}
```

One retrieves the compounds that belong to compound_class `x` with `db[collection].find({"compound_class":"x"},{"_id":False})`.

I stored the compounds in CSV files, with the following headers


|Name| Synonym |ID | Relation |Rarget|
|:---|---|-----|---|---|
|Psilocin|4-HO-DMT|  | metabolite via dephosphorylation|psilocybin|
|Psilocin|4-PO-DMT|		|metabolite via dephosphorylation|psilacetin|
|psilocybin|4-HO-DMT|	|	parent compound of|psilocybin|
| ---|---|---|---|---|