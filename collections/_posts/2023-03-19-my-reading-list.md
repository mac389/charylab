---
title: My Reading List
author: Michael Chary
layout: post
date: 2023-03-20
tag: [literature]
excerpt: My Reading List
modified: 2026-02-24
parse_block_html: true
---

My list of books I've read, with marginalia.

**2025** I started noting books that I started and didn't finish.

{% assign with_date = '' | split: '' %}
{% assign without_date = '' | split: '' %}

{% for book in site.data.books %}
{% if book.date_finished %}
{% assign with_date = with_date | push: book %}
{% else %}
{% assign without_date = without_date | push: book %}
{% endif %}
{% endfor %}

{% assign with_date = with_date| date_sort | reverse %}

### Books That I Remember When I Read Them

{% for book in with_date %} - [{{ book.title }}]({{ book.url }}) by {{ book.author }} {% if book.date_finished %} _({% if book.stopped_reading %}Stopped {% else %}Finished {% endif %}{{ book.date_finished | date: "%-d %B %Y" }})_ {% endif %}
{% if book.notes %}
<b>Notes: </b>{{ book.notes }}
{% endif %}
{% endfor %}

### Books That I Don't Remember When I Read Them

{% for book in without_date %} -[{{ book.title }}]({{ book.url }}) by {{ book.author }}
{% if book.notes %}
<b>Notes: </b>{{ book.notes }}
{% endif %}
{% endfor %}
