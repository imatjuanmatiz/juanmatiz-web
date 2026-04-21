
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

## Proceso GEO / SEO

Cada cambio relevante del sitio debería pasar por este orden:

1. **Posicionamiento y jerarquía**
   - Confirmar qué frentes están activos hoy
   - Verificar que `home`, `proyectos`, `publicaciones`, `blog` y `contacto` cuenten la misma historia
   - Quitar marcas, iniciativas o enlaces que ya no deban tener protagonismo

2. **Crawlabilidad**
   - Revisar `robots.txt`
   - Revisar `llms.txt`
   - Confirmar que `jekyll-sitemap` siga activo en `_config.yml`
   - Verificar canónicos en las páginas clave

3. **Metadata compartida**
   - Mantener `title`, `description` y `seo.tldr` al día en cada página principal
   - Usar el layout compartido para Open Graph, Twitter y canonical
   - Evitar páginas duplicadas para una misma ruta

4. **Enlazado interno**
   - Desde `index.md`, enlazar siempre a proyectos, publicaciones, contacto y los hubs externos activos
   - Mantener footer y navegación alineados con la estrategia actual

5. **Chequeo final**
   - Correr `bundle install`
   - Correr `bundle exec jekyll build` o `bundle exec jekyll serve`
   - Revisar `/`, `/proyectos/`, `/publicaciones/`, `/blog/` y `/contacto/`

## Checklist rápido para cambios de contenido

- ¿La home explica claramente qué hace Juan hoy?
- ¿Atiemppo y El Dato Logístico aparecen donde deben aparecer?
- ¿Hay alguna marca antigua compitiendo con el foco actual?
- ¿`llms.txt` y las páginas visibles dicen lo mismo?
- ¿`blog/` apunta a la estrategia editorial real?
- ¿Existe `robots.txt` y el sitemap sigue declarado?

## Contacto

**Juan Pablo Matiz**
Email: juanmatiz@gmail.com
LinkedIn: [linkedin.com/in/juanmatizg](https://linkedin.com/in/juanmatizg)
