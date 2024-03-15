---
title: "Chary Lab - Research"
layout: textlay
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
</head>

INTOXICATE

#### Background

X Developed INTOXICATE to determine which poisoned patients need admission to the ICU/Stepdown unit. Below is the model. SBPS refers to systolic blood pressure. EMV refers to the Glasgow Coma Scale (eye, motor, verbal).

$$
\textrm{risk} = \begin{bmatrix} -1.75 \\ -0.91398 \\ 0.25399 \\ 0.061925 \\ 0.162626 \\ -0.265 \\ -1.22151 \\ 0.325561 \\ 0.038357 \\ 0.014 \\ -0.02035 \\ -0.164725 \\ 1.527795 \\ 1.423788 \\ 0.983364 \\ 1.289260 \\  \end{bmatrix} \cdot
\begin{bmatrix} 1 \\ \textrm{alcohol} \\ \textrm{analgesic}\\ \textrm{antidepressant}\\ \textrm{street drug}\\ \textrm{sedative}\\ \textrm{poison}\\ \textrm{other}\\ \textrm{Age}\\ \textrm{Pulse}\\ \textrm{SBP}\\ \textrm{EMV}\\ \textrm{Respiratory insufficiency}\\ \textrm{Cirrhosis}\\ \textrm{Dysrhythmia}\\ \textrm{Second reason of ICU admission}\\ \end{bmatrix}
$$

<div class="container">
<h4>Variable Encoding</h4>
<div class="row">
<div class="col-md-3">

| <u>Intoxicant</u> |     | <u>Value<u> |
| ----------------: | :-: | :---------: |
|           Alcohol |     |      1      |
|         Analgesic |     |      2      |
|   Antidepressants |     |      3      |
|      Street Drugs |     |      4      |
|         Sedatives |     |      5      |
|        CO, As, CN |     |      6      |
|         Toxin NOS |     |      7      |
|       Combination |     |      8      |

</div>
<div class="col-md-3">

| <u>Age</u> |     | <u>Value</u> |
| ---------: | :-: | :----------: |
|       < 25 |     |      0       |
|      25-35 |     |      2       |
|      35-45 |     |      4       |
|      45-55 |     |      6       |
|      55-65 |     |      8       |
|  $\geq$ 65 |     |      10      |

</div>

<div class="col-md-3">

| <u>SBP</u> |     | <u>Value</u> |
| ---------: | :-: | :----------: |
| $\geq$ 140 |     |      -3      |
|    130-140 |     |      -1      |
|    120-130 |     |      0       |
|    110-120 |     |      1       |
|    100-110 |     |      2       |
|      < 100 |     |      4       |

</div>
</div>
<br>
<div class="row">
<div class="col-md-3">

|  <u>HR</u> |     | <u>Value</u> |
| ---------: | :-: | :----------: |
|       < 75 |     |      0       |
|      75-85 |     |      1       |
|      85-95 |     |      2       |
|     95-105 |     |      3       |
| $\geq$ 105 |     |      4       |

</div>

<div class="col-md-3">

| <u>GCS</u> |     | <u>Value<u> |
| ---------: | :-: | :---------: |
|  $\geq$ 14 |     |      0      |
|       9-14 |     |      3      |
|        6-9 |     |      6      |
|   $\leq$ 6 |     |      9      |

</div>
</div>
</div>

There is before bort.
{% include /custom/intoxicate_embed_plot.html %}
And after bort.
