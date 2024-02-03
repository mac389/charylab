---
title: Journal Club
author: Michael Chary
layout: post
date: 2022-08-29
tag: [science]
excerpt: Creating a Journal Club
modified: 2023-11-14
parse_block_html: true
---

#### November 12, 2023

I read _Zero-shot learning has the potential to revolutionise research on exposure to alcohol and other drugs in digital media_ by {% cite kuntsche2023 --file not-my-works -s apa %}.

**Summary** In this perspective, this authors suggest that models pretrained on large amounts of data are an attractive alternative to models developed for a specific purpose because the pretrained models require less effort to implement and maintain. They bring up the ethical issue that ChatGPT uses the content with which it is provided to iteratively train itself.

--

I read _Thinking beyond outbreak_ by {% cite campbell2023thinking --file not-my-works -s apa %}.

**Summary** In this perspective, the author argues that casting the opioid crisis as an epidemic encourages focussing on immediate responses that do not address the underlying structural issues that perpetuate disordered opioid use.

Her point is well taken. It suggests that my own work can contribute by doing qualitative analysis at scale, rather than trying to turn narratives into another source of epidemiological data.

She makes many points I found illuminating:

1. The endemic overdose rate might have been underestimated owing to conceptual and mediolegal differences in what a death due to an overdose is.
1. Dr. Campbell makes a reference to _long tails_. I didn't understand that reference.
1. > The word of harm reduction advocates was the deliberate and incremental work of everyday _rescue_ rather than the automataic reflex response of abrupt emergency and outbreak.
1. > Just as _outbreak_narratives make spectacle of crisis, they make \_epidemics_ palpable as _emergencies_ and \*\*obscure the cumulative endemic conditions that produced the crisis\_.

### November 14, 2022

I read {% cite merchant2019evaluating --file not-my-works -s apa %}. Abeed Sarker, Jennifer Love, and Jeanmarie Perrone published a similar article more recently reiterating that one could predict opioid use in the real world from social media {% cite yang2023can --file not-my-works -s apa %}.

**Summary** In this prospective cohort study, the authors found that patterns of commmunication on social media could predict diabetes, pregnancy, anxiety, psychoses, and depression with better than chance accuracy. The AUCs ranged from 0.58 (psychoses) to 0.79 (pregnancy).

I have a number of concerns with this paper, some of which may touch on why this paper wound up published in PLoS ONE instead of Science[^1].

1. None of these medical conditions are binary. No one can be _a little_ pregnant but there are substantial differences in health across pregnancy. Predicting an unknown pregnancy is helpful in the first trimester. Later on, it merely demonstrates a grasp of the obvious.
1. How would this model apply to people with more than one condition, such as gestational diabetes or postpartum depression or psychosis?
1. There is no control.
1. The findings, as the authors note, are correlative. They do not try to relate the content of the LDA topics to the underlying disease.
1. Why did the authors use LDA if the predictive model only used words?
1. I appreciate the attention to orthographic variants as being potentially informative. But, they did not show that this is the case. Including such variants overdetermines the model.

### Works Cited

{% bibliography --file not-my-works --cited %}

[^1]: I am not denigrating PLoS ONE. If the paper justified the title, then the article would represent a fundamental advance. There is a divide between the title and the content.
