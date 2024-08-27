---
title: "Chary Lab - Research"
layout: intoxicate
excerpt: "Chary Lab -- Research"
sitemap: false
permalink: /intoxicate/
---

<head>
<link
    href="https://cdn.pydata.org/bokeh/release/bokeh-3.3.4.min.css"
    rel="stylesheet" type="text/css">
<script src="https://cdn.pydata.org/bokeh/release/bokeh-3.3.4.min.js"></script>
<script src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>
<script src="https://cdn.jsdelivr.net/npm/mermaid/dist/mermaid.min.js"></script>
<script>
    mermaid.initialize({
        startOnLoad: true,
        theme: 'default', // Use the default theme as a base
        themeCSS: `
            .language-mermaid {
                background-color: transparent !important;
                font-family: 'Arial', sans-serif; /* Change font family */
            }
            .language-mermaid text {
                font-size: 14px; /* Change font size */
            }
        `,
    });
</script>
</head>

#### Which Poisoned Patients Need the ICU?

**Background.**

1. Fraction of poisoned patients each year admitted to ICU/Stepdown
1. Physiology of poisoning means that scoring systems meant to determine general illness like APACHE may not work.
1. X previously developed INTOXICATE with _methods_ that had _results_.

**Project Roadmap**

```mermaid
graph LR
    A[Replicate Study in US] --> B[Refine Predictors] & C[Extend to Childrens]
    B --> D[Prospectively Validate]
    B --> E[Prospectively Validate]
```

{% cite brandenburg2017need --file not-my-works -s apa %} Developed INTOXICATE to determine which poisoned patients need admission to the ICU/Stepdown unit. Below is the model. SBPS refers to systolic blood pressure. EMV refers to the Glasgow Coma Scale (eye, motor, verbal).

And after bort.

#### References

{% bibliography --file not-my-works --cited_in_order %}
