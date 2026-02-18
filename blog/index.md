---
layout: page
title: Blog
permalink: /blog/
description: Ideas, aprendizajes y experiencias en logística, transporte e innovación aplicada.
---

<section class="blog-listing">
  <div class="wrapper-narrow">
    <p class="post-kicker">Publicaciones</p>
    <h2 style="margin-bottom:10px">Historias, aprendizajes y experimentos</h2>
    <p style="color:var(--text-secondary);margin-bottom:28px">Logística, transporte, innovación y construcción de soluciones en contexto real.</p>

    {% if site.posts.size > 0 %}
    <ul class="post-list">
      {% for post in site.posts %}
      <li class="post-list-item">
        <h3 class="post-list-title"><a href="{{ post.url }}">{{ post.title }}</a></h3>
        <p class="post-meta">{{ post.date | date: "%d %b %Y" }} · {{ post.author | default: site.author.name }}</p>
        <p class="post-excerpt">{{ post.description | default: post.excerpt | strip_html }}</p>
      </li>
      {% endfor %}
    </ul>
    {% else %}
    <p>Aún no hay artículos publicados.</p>
    {% endif %}
  </div>
</section>
