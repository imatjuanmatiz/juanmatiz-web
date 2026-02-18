---
layout: page
title: Blog
permalink: /blog/
description: Ideas, aprendizajes y experiencias en logística, transporte e innovación aplicada.
---

# Blog

{% if site.posts.size > 0 %}
<ul>
  {% for post in site.posts %}
  <li>
    <a href="{{ post.url }}"><strong>{{ post.title }}</strong></a><br/>
    <small>{{ post.date | date: "%d %b %Y" }}</small>
    <p>{{ post.description | default: post.excerpt | strip_html }}</p>
  </li>
  {% endfor %}
</ul>
{% else %}
<p>Aún no hay artículos publicados.</p>
{% endif %}
