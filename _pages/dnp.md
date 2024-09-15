---
title: "Sublethal Toxicity of DNP"
layout: textlay
excerpt: "Sublethal Toxicity of DNP"
sitemap: false
permalink: /dnp/
parse_block_html: true
---

### NACCT 2023
1. Our CFG [poster](url) 

> Thank you for visiting our web page.

### Overall Goal
1. Understand the sublethal toxicity of 2,4-dinitrophenol (DNP) using social media.
2. Develop tools to automatically update this knowledge.
3. Apply these tools to other substances.

#### Scientific Output
1. Sublethal Patterns of 2,4-Dinitrophenol Use as Discussed on Social Media _(manuscript in press)_ ([preprint](https://www.medrxiv.org/content/10.1101/2020.04.26.20080382.full.pdf}))
1. Our [poster]({% link images/poster_presentations/dnp.rhetorical_stance.pdf %}){:target="\_blank"} on how rhetorical stance influences content when posting about DNP.
1. Our [poster]({% link images/poster_presentations/dnp.dose.poster.pdf %}){:target="\_blank"} on dose-effect associations related online for DNP.  

#### Background

**Toxicology** Previous research described lethal toxicity, reflecting the selection bias of case reports and calls to Poison Control Centers (PCC). DNP use appears to have increased. Of the 25 reports of fatalities to US Poison Control Centers, 12 occurred after 2000 {% cite grundlingh20112 --file not-my-works -s apa %}. This suggests that nonfatal use is increasing. But we don't know how people use DNP safely, other than our expectation that they limit the dose.

**Computational Linguistics** An innovation for computational linguistics would be to extract health information from social media posting. Previous research has described extracting health information as named entities {% cite bhatia2019comprehend --file not-my-works -s apa %} and extracting relationships between those entities {% cite foufi2019mining --file not-my-works -s apa %}, sometimes by inferring ontologies {% cite alobaidi2018automated painter2010toward --file not-my-works -s apa %}.

#### Related Notebooks

- [Named Entity Linking]({% post_url 2022-06-25-nel-in-python %})
- [Creating a Knowledge Base for Named Entity Linking]({% post_url 2022-12-23-creating-a-knowledge-base-for-nel-in-python %})
- [Dose-Response & Determining Causality]({% post_url 2022-05-18-bradford-hill-criteria %})
- [Social Media for Drug Development]({% post_url 2022-04-10-social-media-for-drug-discovery %})


#### Related Presentations at Prior Conferences

- [NAACT 2022]({% link pdfs/NAACT_2022.poster.pdf %}){:target="\_blank"} to our poster.

#### Related Projects Online

1. [MedSpaCy](https://github.com/medspacy/medspacy)
1. [SciSpaCy](https://allenai.github.io/scispacy/)

#### Why Use Social Media for DNP

The FDA prohibited DNP for human consumption in 1938 {% cite yen2012toxicity --file not-my-works -s apa %}. Even if the FDA approved DNP for human consumption, it would still be unethical to conduct human trials. We know that some doses of DNP are lethal and are not certain there is any safe dose. We can, ethically, use information that people who consumed DNP of their own accord freely provide. Social media provide just such a data stream.

#### Methods

1. Aggregate reports of DNP usage from social media posts
1. Extract mentions substances and their effects from those posts using [named entity recognition](.). Substances means DNP and coingestants.
1. Cross-reference those mentions with a knowledge base that represents what toxicologists know about the topic using [entity linking](.)
1. (Future) Extract dosage from those posts.
1. (Future) Generate hypotheses as to how the stated coingestants give rise to the stated effects or could otherwise be beneficial.


### References

{% bibliography --file not-my-works --cited_in_order %}
