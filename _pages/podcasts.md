---
title: "The Toxicologist"
layout: textlay
excerpt: "The Toxicologist (Podcast)"
permalink: /podcasts
---

{% assign sortedPodcasts = site.podcasts | where_exp: "post", "post.outline == false" | sort: 'modified' | reverse %}

<ul>
  {% for post in sortedPodcasts %}
    <li>
      <b><a href="{{ post.url }}">{{ post.title }}</a></b> (Last modified {{ post.modified | date_to_string }})
    </li>
  {% endfor %}
</ul>

