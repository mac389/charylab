---
title: "Chary Lab - Team"
layout: gridlay
excerpt: "Chary Lab: Team members"
sitemap: false
permalink: /team/
---

# Group Members

**We are hiring a staff scientist or lab tech with experience in applied mathematics or linguistics** ([Posting](https://career4.successfactors.com/career?career%5fns=job%5flisting&company=C0000274692P&navBarLevel=JOB%5fSEARCH&rcm%5fsite%5flocale=en%5fUS&site=VjItcmY2YVFFcnJMYWhIb3RmMzhTYU9Ldz09&career_job_req_id=61405&selected_lang=en_US&jobAlertController_jobAlertId=&jobAlertController_jobAlertName=&browserTimeZone=America/New_York&_s.crb=72qRUkH9U2GHu6eq2KFRSpEEpABNEMoArYE%2fp6iHMMM%3d">Posting){:target="_blank"})

**For some projects, such as [FACT]({% link _pages/fact_covid.md %}){:target="_blank"}, I work with the Department of Emergency Medicine's [Research Associates](https://emed.weill.cornell.edu/research/research-associate-program){:target="_blank"}**


## Staff
{% assign number_printed = 0 %}
{% for member in site.data.team_members %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <img src="{{ site.baseurl }}/images/teampic/{{ member.photo }}" class="img-responsive" width="25%" style="float: left" />
  <h4>{{ member.name }}</h4>
  <i>{{ member.info }}<br>email: <{{ member.email }}></i>
  {% if member.main_project %}
  <i> Project: {{ member.main_project }}</i>
  {% endif %}
  
  {% if member.education %}
  <ul style="overflow: hidden">
    {% for item in member.education %}
      <li> {{ item }} </li>
    {% endfor %}
  </ul>
  {% endif %}
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}


## Students
{% assign number_printed = 0 %}
{% for member in site.data.students %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <h4>{{ member.name }}</h4>

  {% if member.email %}
    <i>{{ member.info }}<br>email: <{{ member.email }}></i>
  {% endif %}

  {% if member.main_project %}

  <i> Project: <a href="{{ member.main_project_link }}">{{ member.main_project }}</a></i>
  {% endif %}
  
  <!-- Do I want to make a list when I probably will only list the student's most recent education?-->
  {% if member.education %}
  <ul style="overflow: hidden">
    {% for item in member.education %}
      <li> {{ item }} </li>
    {% endfor %}
  </ul>
  {% endif %}

</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

<!--
## Alumni

{% assign number_printed = 0 %}
{% for member in site.data.alumni_members %}

{% assign even_odd = number_printed | modulo: 2 %}

{% if even_odd == 0 %}
<div class="row">
{% endif %}

<div class="col-sm-6 clearfix">
  <img src="{{ site.url }}{{ site.baseurl }}/images/teampic/{{ member.photo }}" class="img-responsive" width="25%" style="float: left" />
  <h4>{{ member.name }}</h4>
  <i>{{ member.duration }} <br> Role: {{ member.info }}</i>
  <ul style="overflow: hidden">

  </ul>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

## Former visitors, BSc/ MSc students
<div class="row">

<div class="col-sm-4 clearfix">
<h4>Visitors</h4>
{% for member in site.data.alumni_visitors %}
{{ member.name }}
{% endfor %}
</div>

<div class="col-sm-4 clearfix">
<h4>Master students</h4>
{% for member in site.data.alumni_msc %}
{{ member.name }}
{% endfor %}
</div>

<div class="col-sm-4 clearfix">
<h4>Bachelor Students</h4>
{% for member in site.data.alumni_bsc %}
{{ member.name }}
{% endfor %}
</div>

</div>


## Administrative Support
-->
