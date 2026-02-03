#!/bin/bash

# Script para verificar que todos los archivos markdown estén correctamente formateados
# Uso: ./scripts/ci_check_md.sh

echo "Verificando archivos markdown..."

# Verificar que todos los posts tengan frontmatter
for post in _posts/*.md; do
  if ! grep -q "^---$" "$post"; then
    echo "❌ Error: $post no tiene frontmatter"
    exit 1
  fi
done

# Verificar que las páginas principales existan
required_pages=("index.md" "sobre-mi.md" "cv.md" "proyectos.md" "publicaciones.md" "contacto.md")
for page in "${required_pages[@]}"; do
  if [ ! -f "$page" ]; then
    echo "❌ Error: Falta la página $page"
    exit 1
  fi
done

echo "✓ Todos los archivos markdown están correctamente formateados"
