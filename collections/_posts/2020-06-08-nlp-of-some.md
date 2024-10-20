---
title: Natural Language Processing of Social Media
author: Michael Chary
layout: post
date: 2020-06-08
modified: 2020-06-08
tag: [natural language processing, social media] 
excerpt: Natural Language Processing can help us perform syndromic surveillance with social media
---



Natural Language Processing To Extract Health Information from Social Media 





The analysis of text from Social Media may overcome the limitations of traditional means of public health epidemiology. Surveys are slow and so may not provide timely information. They are also expensive, which limits their scope introducing sampling bias. 

The analysis of text from Social Media has its own issues. The data contain considerable noise, use nonstandard orthography and semantics and are too large for manual curation.



Spanish Language 

1. [Leis et al (2019)](https://preprints.jmir.org/preprint/14199) noted that those who explicitly stated they had depression tweeted more at night than those who did not explicitly state (or didn't have) and preferred verbs to nouns. 
2. [Eichstaedt et al (2018)](https://www.pnas.org/content/115/44/11203.short) found that a topic analysis of Facebook posts could predict depression 3 months before those users sought care and were formally diagnosed. 

Both of these papers inferred semantics from frequency. The ubiquity of polysemy and slang online make it hard for me to believe that the model in (1) could be applied to other data without re-tuning. In fact, (2) could not replicate the importance of diurnal variation that (1) found. The topics that (2) uncovered had make medical sense, referring to depressed mood, feelings of agitation or desolation, somatic complaints, and medical discussions. But, I feel the authors of (2) got lucky. LDA rarely gives such nice topics. 

_TODO: Discuss each of these papers more_

Word emeddings provide an alternative topic modeling or deriving semantics from syntax. 

1. [Feng et al. (2018)](https://aaai.org/ocs/index.php/WS/AAAIW18/paper/viewPDFInterstitial/17178/15617) used a combination RNN/CNN to identify features from Twitter text that related to personal health experiences. They compared three common methods of word embedding (word2vec, fastText, WordRank). Adding RNNs allowed them to identify _sequenctial semantics_, that is to consider phrases instead of isolated token. 


### To Read
* [Beyond bag of words: Using PyTextRank to find Phrases and Summarize text](https://medium.com/@aneesha/beyond-bag-of-words-using-pytextrank-to-find-phrases-and-summarize-text-f736fa3773c5)
* [Pre-trained Word Embeddings with Gensim](https://kavita-ganesan.com/easily-access-pre-trained-word-embeddings-with-gensim/?relatedposts_hit=1&relatedposts_origin=1229&relatedposts_position=0#.XYlqBJNKjxW)
* [Tracking temporal evolution in word meaning](https://pdfs.semanticscholar.org/24c2/3289b487fed733d1f2f49b78cbc091f5d253.pdf)
* [Word2Vec tutorial](https://markroxor.github.io/gensim/static/notebooks/online_w2v_tutorial.html)
* [How to Develop Word Embeddings with Gensim](https://machinelearningmastery.com/develop-word-embeddings-python-gensim/)
* [NLP of social media, for mental illness](./nlp-of-some.md)
* [Transfer learning in NLP](https://towardsdatascience.com/transfer-learning-in-nlp-fecc59f546e4)


 