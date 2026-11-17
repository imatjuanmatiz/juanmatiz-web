---
layout: page
title: "Blog de Juan Pablo Matiz, conferencista en IA y logística"
permalink: /blog/
seo:
  description: "Blog de Juan Pablo Matiz, conferencista de IA aplicada a logística y transporte. Notas de este sitio, El Dato Logístico y el archivo de ATIEMPPO."
---

<section class="page-hero">
  <div class="wrapper-narrow">
    <p class="post-kicker">Publicaciones</p>
    <h1 class="page-title-long">Blog de Juan Pablo Matiz sobre logística e IA</h1>
    <p class="page-subtitle">Escritura actual y archivo. Este sitio personal funciona como hub. Mi escritura más activa hoy vive en El Dato Logístico, en el laboratorio editorial de Atiemppo y en el trabajo que acompaña mis conferencias.</p>
  </div>
</section>

<section class="page-content">
  <div class="wrapper-narrow">

    <div class="cards-grid" style="margin-bottom:40px">
      <div class="card">
        <div class="card-icon blue"><i data-lucide="newspaper"></i></div>
        <h3>El Dato Logístico</h3>
        <p>Newsletter y archivo editorial sobre transporte, costos, señales de mercado, datos e IA aplicada.</p>
        <p><a href="https://www.eldatologistico.com/authors/juan-pablo-matiz" target="_blank" rel="noopener">Abrir publicaciones</a></p>
      </div>
      <div class="card">
        <div class="card-icon dark"><i data-lucide="flask-conical"></i></div>
        <h3>Blog de Atiemppo</h3>
        <p>Notas sobre productos, agentes, automatizaciones, implementación y proyectos vivos conectados con logística e IA.</p>
        <p><a href="https://atiemppo.com/blog/" target="_blank" rel="noopener">Ir al blog</a></p>
      </div>
      <div class="card">
        <div class="card-icon gold"><i data-lucide="mic"></i></div>
        <h3>Conferencias de logística</h3>
        <p>Temas, experiencias y notas de Juan Pablo Matiz como conferencista en logística, transporte, datos e IA aplicada.</p>
        <p><a href="/conferencias">Ver conferencias</a> · <a href="https://atiemppo.com/blog/conferencias/" target="_blank" rel="noopener">Blog de conferencias en ATIEMPPO</a></p>
      </div>
    </div>

    <h2 style="margin-bottom:10px">Archivo en este sitio</h2>
    <p style="color:var(--text-secondary);margin-bottom:28px">Aquí quedan publicaciones anteriores y piezas que ayudan a entender la trayectoria detrás de lo que estoy construyendo hoy.</p>

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
