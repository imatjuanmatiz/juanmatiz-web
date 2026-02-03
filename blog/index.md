---
title: "Blog - Juan Pablo Matiz"
layout: page
seo:
  tldr: "Blog de Juan Pablo Matiz sobre logística, transformación digital, IA aplicada, políticas públicas y proyectos en América Latina"
aiContext:
  topic: "Blog de Logística e IA"
  industry: "Consultoría, Transformación Digital"
  region: "América Latina"
canonical: "https://juanmatiz.com/blog"
---

# Blog

Reflexiones, casos de estudio y aprendizajes sobre logística, transformación digital e inteligencia artificial en América Latina.

## Todos los posts

{% for post in site.posts %}
### [{{ post.title }}]({{ post.url }})

{{ post.date | date: "%d de %B, %Y" }} • {{ post.category }}

{{ post.excerpt }}

[Leer más →]({{ post.url }})

---

{% endfor %}
