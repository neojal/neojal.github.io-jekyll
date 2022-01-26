---
layout: topic-index
title: Design Patterns
description: Types of
categories: best-practices
---

  <ul>{% for topic in site.topic-design-patterns %}
      <li><a href="{{topic.url}}">{{ topic.title }}</a> - {{ topic.description }}</li>
      {% endfor %}
  </ul>
<hr>