# Guía de Deployment - juanmatiz.com

## Requisitos previos

- ✅ Cuenta GitHub: imatjuanmatiz
- ✅ Dominios comprados: juanmatiz.com + juanpablomatiz.com
- ✅ Git instalado localmente

## Paso 1: Crear repositorio en GitHub

1. Ve a https://github.com/new
2. Nombre del repo: `juanmatiz-web`
3. Descripción: "Sitio web personal - juanmatiz.com"
4. Público
5. NO inicialices con README (ya lo tienes)
6. Click "Create repository"

## Paso 2: Subir archivos localmente

```bash
# Descomprimir el .zip que Cowork te entregó
cd juanmatiz-web

# Inicializar git
git init

# Agregar archivos
git add .

# Commit inicial
git commit -m "Initial commit - sitio completo con 10 posts"

# Conectar con GitHub
git remote add origin https://github.com/imatjuanmatiz/juanmatiz-web.git

# Subir a GitHub
git branch -M main
git push -u origin main
```

## Paso 3: Activar GitHub Pages

1. Ve a tu repo: https://github.com/imatjuanmatiz/juanmatiz-web
2. Click "Settings" (arriba derecha)
3. En el menú izquierdo, click "Pages"
4. En "Source", selecciona "GitHub Actions"
5. El workflow ya está configurado en `.github/workflows/pages-deploy.yml`
6. Espera ~2 minutos
7. Verás un mensaje: "Your site is live at https://imatjuanmatiz.github.io/juanmatiz-web/"

## Paso 4: Configurar dominio custom (juanmatiz.com)

### En GitHub:

1. Estando en Settings → Pages
2. En "Custom domain", escribe: `juanmatiz.com`
3. Click "Save"
4. Espera unos segundos
5. Marca la casilla "Enforce HTTPS" (cuando esté disponible)

### En tu proveedor de dominio (Namecheap/Porkbun/Cloudflare):

#### DNS Records a crear:

**Para juanmatiz.com (principal):**

```
Tipo: A
Host: @
Value: 185.199.108.153
TTL: Automático

Tipo: A
Host: @
Value: 185.199.109.153
TTL: Automático

Tipo: A
Host: @
Value: 185.199.110.153
TTL: Automático

Tipo: A
Host: @
Value: 185.199.111.153
TTL: Automático

Tipo: CNAME
Host: www
Value: imatjuanmatiz.github.io
TTL: Automático
```

**Para juanpablomatiz.com (redirect):**

```
Tipo: CNAME
Host: @
Value: juanmatiz.com
TTL: Automático

Tipo: CNAME
Host: www
Value: juanmatiz.com
TTL: Automático
```

#### Verificación:

Espera 5-60 minutos (propagación DNS)

Verifica con:
```bash
dig juanmatiz.com
dig www.juanmatiz.com
```

## Paso 5: Verificar el sitio

1. Visita https://juanmatiz.com
2. Verifica que cargue correctamente
3. Prueba links del menú
4. Verifica que los 10 posts aparezcan en /blog
5. Prueba versiones .md (ej: https://juanmatiz.com/sobre-mi.md)

## Paso 6: Agregar contenido futuro

### Agregar nuevo post:

```bash
# Crear archivo en _posts/
nano _posts/2025-02-15-nuevo-post.md

# Agregar frontmatter y contenido
# Guardar

# Git workflow
git add _posts/2025-02-15-nuevo-post.md
git commit -m "Nuevo post: [título]"
git push

# GitHub Actions automáticamente rebuildeará el sitio (~2 min)
```

## Troubleshooting

### Problema: Sitio no carga después de 10 minutos

**Solución:**
1. Ve a Actions tab en GitHub
2. Verifica que el workflow "Deploy to GitHub Pages" esté verde
3. Si está rojo, click en el workflow y revisa errores
4. Común: error en Gemfile → verifica que `bundle install` funcione localmente

### Problema: Dominio no resuelve

**Solución:**
1. Verifica DNS con `dig juanmatiz.com`
2. Espera hasta 24h para propagación completa
3. Verifica que los 4 registros A estén correctos
4. En GitHub Settings → Pages, debe decir "DNS check successful"

### Problema: Posts no aparecen

**Solución:**
1. Verifica que el filename tenga formato `YYYY-MM-DD-titulo.md`
2. Verifica que la fecha en frontmatter sea válida
3. Verifica que el archivo esté en `_posts/` no en subdirectorio

## Mantenimiento

### Actualizar contenido:

```bash
# Editar archivo
nano sobre-mi.md

# Commit y push
git add sobre-mi.md
git commit -m "Actualizar bio"
git push
```

### Backup:

GitHub es tu backup automático. Clona el repo en otro lugar si quieres copia extra:

```bash
git clone https://github.com/imatjuanmatiz/juanmatiz-web.git ~/backup/
```

---

¡Listo! Tu sitio está vivo en https://juanmatiz.com 🎉
