---
title: Journal Club
layout: textlay
sitemap: false
permalink: /jc
layout: jc
author: Michael Chary
---

### TODO

- [ ] Link between related articles.
- [ ] Implement _read a random post_ feature.
- [ ] Allow narrative citations.
- [ ] Make groupby feature live.

#### Background

Saul Bellow wrote [there is simply too much to think about](https://www.amazon.com/There-Simply-Much-Think-About/dp/0143108042). A scientist must think and, guided by that thought, do. Acquiring knowledge is a skill, as is distilling knowledge into wisdo. This notebook is my attempt to record my reading of the scientific literature and make explicit the conceptual links I form between articles, to engage with the literature of my areas of interest just as I have tried to do [with the classics]({% post_url 2022-05-04-classical-reading %}).

{% assign sortedPosts = site.scientific_notes | sort: 'modified' | reverse %}

#### Most Recent Paper

{% assign post = sortedPosts.first %}
{% assign key = post.title | downcase %}

- {% reference key --file not-my-works -s apa %} <b><a href="{{ post.url }}">Detail</a></b> (Last modified {{ post.modified | date_to_string }})

#### Randomly Chosen Paper

{% assign post = sortedPosts | sample: 1 %}
{% assign key = post.title | downcase %}

- {% reference key --file not-my-works -s apa %} <b><a href="{{ post.url }}">Detail</a></b> (Last modified {{ post.modified | date_to_string }})

#### Papers Ordered By Subject Frequency

{% assign categories = "" | split: "" %}
{% for post in sortedPosts %}
{% assign categories = categories | concat: post.category %}
{% endfor %}

{% assign unique_categories = categories | uniq %}
{% for category in unique_categories %}
{% assign count = 0 %}
{% for post in sortedPosts %}
{% if post.category contains category %}
{% assign count = count | plus: 1 %}
{% endif %}
{% endfor %}

- [{{ category }} ({{ count }})](#{{ category }}-list)
  {% endfor %}

{% for category in categories %}

<section id={{ category }}-list>**{{ category }}**
{% for post in sortedPosts %}
{% if post.category contains category %}

{% assign post = sortedPosts.first %}
{% assign key = post.title | downcase %}

- {% reference key --file not-my-works -s apa %} <b><a href="{{ post.url }}">Detail</a></b> (Last modified {{ post.modified | date_to_string }})
  {% endif %}

{% endfor %}

</section>
{% endfor %}
