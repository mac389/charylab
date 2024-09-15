---
title: "Chary Lab - Research"
layout: textlay
excerpt: "Chary Lab -- Research"
sitemap: false
permalink: /intoxicate/
---

> Thank you for coming to our presentation at NACCT 2024. [Link](../pdfs/NACCT.2024.poster.pdf){:target="\_blank"} to presentation. More info below.

#### INTOXICATE

Which Poisoned Patients Need Admission to the ICU/Stepdown Unit?

#### Background 
{% cite brandenburg2017need --file not-my-works --style ./_bibliography/citet.csl %} developed INTOXICATE to predict which poisoned patients will require pressors or mechanical ventilation in the first 24 hours after presentation to hospital. The predictive model was derived from a retrospective cohort of 9,286 patients admitted to ICUs in the Netherlands and externally validated in a retrospective cohort of 1,654 poisoned patients admitted to the ICUs across Europe {% cite zwaag2024intoxicate --file not-my-works -s apa %} . In the external validation, INTOXICATE had a sensitivity of 0.96 and specificity of 0.18, negative predictive value of 0.91, positive predictive value of 0.32, and AUC ROC of 0.69 (95% CI 0.64-0.73)[^1].

<u><b>Our goal</b></u> was to determine the performance of INTOXICATE in the US healthcare system. We conducted a retrospective cohort study of poisoned patients in one academic medical system from 2023 to 2024. One significant difference between our methodology and the external validation is that our study population was patients presenting to the emergency department for whom Toxicology was consulted, not patients admitted to the ICU. Another difference is that they used vital signs obtained within the first hour of arrival to the ICU, whereas we used vital signs obtained within the first hour of arrival to the emergency department[^2]. We chose the ED because we felt INTOXICATE would have larger impact in preventing rather than rapidly downgrading ICU admissions[^3]. 

<u><b>Our findings</b></u> were that, in a population of 112 poisoned patients in the ED, INTOXICATE had a sensitivity of 100% (95% CI 63.1-100%), specificity of 59.1% (95% CI 48.5-69.2%), positive predictive value of 17.4% (95% CI 14.2-21.2%), and negative predictive value of 100% (95% CI 93.5-100%). The table below comparees the performance of INTOXICATE in the external validation and in our study.

|   Metric    |   External Validation |   Our Study |
| ---: | :---: | :---: |
| Sensitivity | 0.96 | 1.00 |
| Specificity | 0.18 | 0.59 (0.49-0.69) |
| Positive Predictive Value | 0.32 | 0.17 (0.14-0.21) |
| Negative Predictive Value | 0.91 | 1.00 |
| --- | --- | --- |
{: .table .table-bordered .table-hover .table-condensed .table-sm}

<u><b>Our conclusions</b></u> are that INTOXICATE has a higher specificity in the poisoned patient in the (American) ED compared to the poisoned patient in the (European) ICU because the lack of vital sign abnormalities earlier on in the clinical course suggests a less severe ingestion. The lower positive predictive value may reflect the lower discriminative value of patient demographics and prior medical history which INTOXICATE heavily weights. 

<b><u>Our next steps</u></b> are to:
1. Increase the specificity of INTOXICATE by incorporating additional variables that are more predictive of the need for ICU admission in the US healthcare system,  
1. Increase the positive predictive value of INTOXICATE by determining the patient population for whom INTOXICATE is most predictive. 
1. Prospectively validate INTOXICATE in the US healthcare system.

Ultimately, we think that INTOXICATE could be useful as part of a suite of clinical decision tools to help guide the disposition of poisoned patients in the ED.

#### Related Notebooks
 - [Computable Phenotypes]({% post_url 2021-04-03-computable-phenotypes %})


#### Works Cited

{% bibliography --file not-my-works --cited_in_order %}

#### Footnotes
[^1]: These findings were presented as preliminary data at EAPCCT 2023. [Preprint just released](https://www.researchsquare.com/article/rs-4622968/v1){:target="\_blank"}. The final results are pending publication.
[^2]: A vital sign that is persistently abnormal despite resuscitation in the emergency department may be more predictive of the need for ICU admission than a vital sign that is abnormal on arrival to the ICU but normalizes with resuscitation. There may also be differences in the care provided in Emergency Departments in the US compared to the Netherlands or the EU.
[^3]: Especially with the prevalence of boarding in the ED while waiting for an ICU bed. 


