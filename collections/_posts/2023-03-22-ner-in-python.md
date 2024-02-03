---
title: Named Entity Recognition in Python
author: Michael Chary
layout: post
date: 2023-03-22
tag: [python, nlp]
excerpt: NER in Python
modified: 2023-04-23
parse_block_html: true
---

#### Introduction.

Named Entity Recognition (NER) refers to mapping groups of characters to known entities in the real word, for example recognizing that the sequence of characters _ball_ refers to the round object that bounces. NER is linked with named entity linking (NEL) where the recognized entity is mapped onto a unique identifier.

#### Literature Review

Biomedical NER is challenging. Biomedical texts have compound words and large out-of-vocabulary sizes. Except for RNN-based models whose F1 scores are around 0.60, models useing word embeddings (GloVe, Word2Vec) have F1 scores between 0.7 and 0.75 {% cite song2018comparison --file not-my-works -s apa %}. An ensemble model can achieved an F1 score of 0.93 on biomedical texts, but not validation for social media has been reported {% cite sung2022bern2 --file not-my-works -s apa %}.

Including character level features can increase the generalizability of word-level embeddings. Indeed, adding a bidirectional LTSM improves state-of-the-art biomedical NER systems based on word embeddings improved the F1 score from .70 to .75 {% cite gridach2017character --file not-my-works -s apa %}. This increase is modest. Most biomedical NER systems that rely on word embeddings have F1 scores between 0.70 and 0.75.

Character level features frequently vary in morphology even while preserving phonology, for example carfenta*nil* but fenta*nyl* {% cite kim2022your --file not-my-works -s apa %}.

#### Related Notebooks

1. [Named Entity **Linking** in Python]({% post_url 2022-06-25-nel-in-python %})

#### Bibliography

{% bibliography --file not-my-works --cited %}
