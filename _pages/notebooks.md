---
layout: default
permalink: /notebooks
---

### Notebooks

Each notebook represents a general field. The date in parentheses represents the last time I updated that notebook. I try to strike a balance between flat and linked structures. _(The creation of a useful table of contents may, itself, be an instructive exercise in information management.)_

These notebooks, like [Cosma Shalizi's](http://bactra.org/notebooks/), document my attempt to distill data into knowledge and wisdom. Please use GitHub's version control to fork and improve this. 

### Posts: (Or [tag view](tag.html))

{% assign sortedPosts = site.posts | sort: 'modified' | reverse %}

<ul>
  {% for post in sortedPosts %}
    <li>
      <b><a href="{{ post.url }}">{{ post.title }}</a></b> (Last modified {{ post.modified | date_to_string }})
    </li>
  {% endfor %}
</ul>




