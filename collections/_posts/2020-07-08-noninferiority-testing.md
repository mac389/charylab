---
title: Noninferiority Testing
author: Michael Chary
layout: post
date: 2020-07-08
tag: [research methods] 
excerpt: Two wrongs don't make a right
modified: 2020-07-08
---

{% comment %}
Still editing 
{% endcomment %}

WCMC Emergency Medicine conference on 07/08/2020 began with a discussion of [this article](https://jamanetwork.com/journals/jama/fullarticle/2757578). The trial compared two medications for intubation and found that, at the doses they compared, the choice of medication did not influence the outcome. Or, rather did not _not_ influence the outcome. A good portion of the following hour was devoted to unpacking that double negative. 

Statistics distinguishes between the existence of a difference, the lack of existence of a difference, and the existence of a lack of a difference. It is easy to confuse the lack of existence of a difference (nonsuperiority) with the existence of a lack of a difference (noninferiority). 

The issue is partly semantics, in the linguistic sense not the snarky sense. In usual language equality is the lack of a difference. A statistical finding is a provisional falsification. The closest thing to demonstrating that two things are equal is to falsify the assumption (reject the hypothesis that) they are not equal. 

Even outside of noninferiority trials the difference between _lack of significant difference_ and _equality_ is rampant. Nutritional studies are notorious for conflating "didn't show liver damage in this study" with "is safe for the liver". 

A deeper issue, to me, is that the dialect of English used in scientific communication is not precise enough. I'm not singling out the English language. I also don't want to make expansive claims. Numbers provide important clarity. 

There is a Bayesian alternative, the Bayes factor. As I often find with Bayesian approaches, the Bayes factor makes perfect sense initially and then six months later when I can actually compute the Bayes factor, it makes sense again. The [Bayes factor](https://en.wikipedia.org/wiki/Bayes_factor) quantifies how much the evidence from the current experiment favors the alternative hypothesis over the null hypothesis. John Ioannidis [has proposed it](https://bmcmedresmethodol.biomedcentral.com/articles/10.1186/s12874-019-0699-7) as an alternative to classical hypothesis testing in clinical research. 

