---
title: "Expertise"
layout: textlay
excerpt: "Areas of expertise for Michael Chary, MD, PhD: medical toxicology, emergency medicine, substance use disorders, clinical decision support, and computational public health."
permalink: /expertise/
---

# Areas of Expertise

Michael Chary, MD, PhD is an emergency physician, medical toxicologist, and physician-scientist whose work focuses on using computational methods to improve the detection, triage, and management of poisoning, substance use disorders, and other acute public health problems.

His research combines medical toxicology, emergency medicine, clinical informatics, natural language processing, and digital health.

## Medical Toxicology

Medical toxicology is the study of poisoning, adverse drug effects, substance use, medication interactions, and environmental or occupational exposures.

Dr. Chary's toxicology work focuses on identifying clinically meaningful signals from complex sources of information, including poison center data, electronic health records, and online commentary.

Related areas:

- Poisoning and overdose
- Medication and supplement toxicity
- Substance use disorders
- Poison center systems
- Digital triage for toxicologic exposures

## Emergency Medicine

Emergency departments are a major point of care for patients with acute poisoning, overdose, intoxication, withdrawal, and complications of substance use.

Dr. Chary's emergency medicine research focuses on how clinical workflows, decision support tools, and triage systems can improve patient care and resource use.

Related areas:

- Acute care delivery
- Emergency department workflow
- Clinical decision support
- Risk stratification
- Care pathways for poisoned patients

## Substance Use Disorders

Dr. Chary studies substance use disorders through both clinical and computational approaches, with an emphasis on opioid withdrawal, polysubstance use, and emerging substances discussed in online communities.

Related areas:

- Opioid withdrawal
- Buprenorphine-precipitated withdrawal
- Online discussions of substance use
- Novel psychoactive substances
- Public health surveillance

## Computational Toxicology

Computational toxicology uses data science, machine learning, and natural language processing to identify patterns in toxicologic exposures and outcomes.

Dr. Chary's work includes developing pipelines to extract substances, symptoms, effects, and treatment claims from unstructured text.

Related projects:

{% assign research_pages = site.pages | where_exp: "page", "page.permalink contains 'jarvis'" %}
{% for item in research_pages %}
- [{{ item.title }}]({{ item.url | relative_url }})
{% endfor %}

## Social Media Surveillance

Online communities contain real-world descriptions of drug effects, supplement use, adverse reactions, withdrawal experiences, and self-treatment strategies.

Dr. Chary studies how these data can be used responsibly to identify emerging toxicologic and public health signals.

Related areas:

- Reddit-based substance use research
- Patient-generated health data
- Toxicovigilance
- Pharmacovigilance
- Public health informatics

## Clinical Decision Support

Clinical decision support tools can help clinicians identify which poisoned patients need intensive monitoring, antidotal therapy, or higher levels of care.

Dr. Chary's work examines how such tools are developed, validated, implemented, and adopted in real clinical settings.

Related areas:

- ICU triage for poisoned patients
- Risk prediction
- Physician adoption of decision support
- Human-centered validation
- Implementation science

## Poison Control Systems and Digital Triage

Poison control centers and digital triage tools are central to the management of poisoning in the United States.

Dr. Chary's research examines how telephone-based, web-based, and hospital-based toxicology systems interact, and how digital tools may improve access to safe toxicologic guidance.

Related areas:

- Poison center workflows
- webPOISONCONTROL
- Digital triage
- Public-facing toxicology tools
- Health system utilization

## Digital Health and Machine Learning in Healthcare

Dr. Chary's broader digital health work focuses on building tools that convert messy real-world data into clinically useful information.

Related areas:

- Natural language processing
- Machine learning for healthcare
- Information extraction
- Clinical informatics
- Human-centered design
- Validation of AI-enabled tools

## Selected Research Topics

- Identifying substances discussed online as remedies for opioid withdrawal
- Validating clinical decision support tools for poisoned patients
- Modeling how patients access toxicology care
- Detecting emerging toxicologic signals from unstructured text
- Improving the usability and adoption of clinical decision support tools
- Understanding misinformation and self-treatment in online health communities

## Related Pages

- [Research]({{ "/research/" | relative_url }})
- [Publications]({{ "/publications/" | relative_url }})
- [Team]({{ "/team/" | relative_url }})
- [CV]({{ "/cv/" | relative_url }})
