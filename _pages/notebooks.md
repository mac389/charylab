---
layout: default
permalink: /notebooks
---

### Notebooks

This organization is an homage to [Cosma Shalizi's notebooks](http://bactra.org/notebooks/). These notebooks, like his, charting an attempt to turn data and information into wisdom. Please use GitHub's version control to fork and improve this. *Incredible bob*

**Structure** Each notebook represents a general field. The date in parentheses represents the last time I updated that notebook. I try to strike a balance between flat and linked structures. _(The creation of the most useful table of contents is, itself, an exercise in ontology.)_

### Five Most Recently Edited Posts (Or [tag view](tag.html))


<ul>
  {% for post in site.posts %}
    <li>
      <b><a href="{{ post.url }}">{{ post.title }}</a></b> ({{ post.date | date_to_string }})
      {{ post.excerpt }}
    </li>
  {% endfor %}
</ul>


### Current Toy Projects
* [Javascript Quiz Application](./quiz-application.md)

### Data Structures

* [Tries](./trie.md)

### Medicine
* [Buckthorn Polyneuropathhy](https://www.nejm.org/doi/full/10.1056/NEJM196707132770204)

### Natural Language Processing
* [Beyond bag of words: Using PyTextRank to find Phrases and Summarize text](https://medium.com/@aneesha/beyond-bag-of-words-using-pytextrank-to-find-phrases-and-summarize-text-f736fa3773c5)
* [Pre-trained Word Embeddings with Gensim](https://kavita-ganesan.com/easily-access-pre-trained-word-embeddings-with-gensim/?relatedposts_hit=1&relatedposts_origin=1229&relatedposts_position=0#.XYlqBJNKjxW)
* [Tracking temporal evolution in word meaning](https://pdfs.semanticscholar.org/24c2/3289b487fed733d1f2f49b78cbc091f5d253.pdf)
* [Word2Vec tutorial](https://markroxor.github.io/gensim/static/notebooks/online_w2v_tutorial.html)
* [How to Develop Word Embeddings with Gensim](https://machinelearningmastery.com/develop-word-embeddings-python-gensim/)

### Statistics
* [P-values (10/21/2019)](./p_values.md)
* [Controlling for multiple comparisons](http://www.biostathandbook.com/multiplecomparisons.html)
* [Regressing residuals in second regression](https://stats.stackexchange.com/questions/158650/regress-residuals-in-second-regression)


### Spatial Statistics
* [Good write-up on location quotient](https://www.economicmodeling.com/2011/10/14/understanding-location-quotient-2/)
* [Intro to Spatial Analysis with Geopandas](https://www.youtube.com/watch?v=h5sy0z2BUTo), Don't forget [PySAL](http://pysal.org/notebooks/explore/segregation/intro.html)
* [MIT OCW Geocoding 101](https://ocw.mit.edu/resources/res-str-001-geographic-information-system-gis-tutorial-january-iap-2016/spatial-statistics/MITRES_STR_001IAP16_spati.pdf)

### Software Engineering 

* [Build your first open source Python project](https://towardsdatascience.com/build-your-first-open-source-python-project-53471c9942a7)


### Modeling
* [Introduction to Bayesian Networks](https://towardsdatascience.com/introduction-to-bayesian-networks-81031eeed94e)
* [Unifying Statistical and Logical AI with Markov Logic](https://cacm.acm.org/magazines/2019/7/237715-unifying-logical-and-statistical-ai-with-markov-logic/abstract)
* [A Unified Approach to Interpreting Model Predictions](https://papers.nips.cc/paper/7062-a-unified-approach-to-interpreting-model-predictions.pdf)
* [Judea Pearl's MS lecture](https://www.microsoft.com/en-us/research/video/plenary-2-the-mathematics-of-causal-inference-with-reflections-on-machine-learning/?from=http%3A%2F%2Fresearch.microsoft.com%2Fapps%2Fvideo%2Fdefault.aspx%3Fid%3D191888#!related_info) and [his Web page](http://bayes.cs.ucla.edu/jp_home.html)

### Loisir
* [5 Amerindian Languages to Learn](https://www.rocketlanguages.com/blog/5-native-americanindigenous-languages-you-should-learn)
* Resources: [Mango Languages](https://learn.mangolanguages.com/pathway/from/en-US/to/pes/440/1/1/1), [FluentU](https://www.fluentu.com/blog/rosetta-stone-alternative/), [Clozemaster](https://www.clozemaster.com/languages/pes-eng/play?utf8=%E2%9C%93&skill=vocabulary&sentences_per_round=10&mode=multiple-choice)

### Google Scholar Searches to Sift Through
* [Neural networks medical diagnosis](https://scholar.google.com/scholar?hl=en&as_sdt=0%2C22&q=neural+networks+medical+diagnosis&btnG=&oq=neural+networks+medical+)
* [Vaping Social Media](https://scholar.google.com/scholar?hl=en&as_sdt=0%2C43&q=vaping+social+media&btnG=)

### Sources of text for current projects
* [Vaping subreddits](https://ecigarettereviewed.com/reddit-vape-list/) and [r/Vaping 101](https://www.reddit.com/r/Vaping101/#subs)

### How to Improve Research by Emergency Medicine Residents

* [Resident Research](./resident-research-em.md)



### Natural Language Processing

* [Of social media, for mental illness](./nlp-of-some.md)



