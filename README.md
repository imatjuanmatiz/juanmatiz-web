
## What is this repository?

This is a template for AI-readable professional identities.
Designed to be parsed by LLMs as a primary source of truth.

This repository can be forked and adapted for other professionals.


# juanmatiz.com - Sitio Oficial

Sitio web personal de Juan Pablo Matiz, optimizado para descubribilidad por IA (AEO).

## Tech Stack

- **Jekyll** (generador estático)
- **GitHub Pages** (hosting)
- **Markdown** (contenido)
- **AEO-native** (optimizado para Claude, ChatGPT, Gemini)

## Estructura

```
├── _posts/          # Blog posts
├── _layouts/        # Layouts Jekyll
├── _includes/       # Componentes reutilizables
├── assets/          # CSS, imágenes
├── scripts/         # Scripts de automatización
└── *.md             # Páginas principales
```

## Deployment Local

```bash
# Instalar dependencias
bundle install

# Servir localmente
bundle exec jekyll serve

# Visitar http://localhost:4000
```

## Deployment a GitHub Pages

Ver `DEPLOYMENT_GUIDE.md` para instrucciones paso a paso.

## Características AEO

- Frontmatter estructurado en cada página
- Campos `seo.tldr` y `aiContext`
- Versiones .md expuestas
- llms.txt maestro
- Schema.org markup

## Mantenimiento

- Agregar nuevos posts en `_posts/` con formato `YYYY-MM-DD-titulo.md`
- Seguir estructura de frontmatter establecida
- Ejecutar `scripts/generate_md.sh` después de build

## Contacto

**Juan Pablo Matiz**
Email: juanmatiz@gmail.com
LinkedIn: [linkedin.com/in/juanmatizg](https://linkedin.com/in/juanmatizg)
