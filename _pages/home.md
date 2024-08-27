---
title: "Chary Lab - Home"
layout: homelay
excerpt: "Chary Lab at Weill Cornell Medical College."
sitemap: false
permalink: /
---

I am an Assistant Professor in Emergency Medicine and Medical Toxicology at [Weill Cornell Medical College](https://weill.cornell.edu/). I model complex systems and create computable representations of medical reasoning and knowledge, with an interest in substeance use. 

<div markdown="0" id="carousel" class="carousel slide" data-ride="carousel" data-interval="5000" data-pause="hover" >
        <ol class="carousel-indicators">
        <li data-target="#carousel" data-slide-to="0" class="active">
                </li>
        <li data-target="#carousel" data-slide-to="1" class="">
                </li>
        <li data-target="#carousel" data-slide-to="2" class="">
                </li>
        <li data-target="#carousel" data-slide-to="3">
                </li>
        <li data-target="#carousel" data-slide-to="4">
                </li>
        <li data-target="#carousel" data-slide-to="5">
                </li>
        <li data-target="#carousel" data-slide-to="6">
            </li>
        </ol>
    <div class="carousel-inner" markdown="0">
    {% assign slider_files = site.static_files | where:"for_slider","true"  %}
       {% for image in slider_files %}
            {% if forloop.first == true %}
                <div class="item active">
                    <img src = "{{ image.path }}" alt="Slide"/>
                </div>
            {% else %}
                <div class="item">
                    <img src="{{ image.path }}" alt="Slide"/>
                </div>
            {% endif %}
        {% endfor %}
    </div>

  <a class="left carousel-control" href="#carousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

To this end, I use social media (Twitter, YouTube, etc) for syndromic surveillance and to construct computable knowledge representations. We also try to explain interesting patterns we observe in the context of known biochemical signaling as contained in repositories such as PubChem.

I am grateful for funding from the National Institute on Drug Abuse (NIDA) in the form of their Loan Repayment Program and start-up funding provided by the Emergency Department at Weill Cornell Medical College.

<figure class="fourth">
  <img src="/images/logopic/NIDA.png" style="width: 210px">
  <img src="/images/logopic/acmt.png" style="width: 210px">
</figure>
