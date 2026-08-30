#!/bin/bash

# Script para generar versiones markdown de páginas Jekyll
# Uso: ./scripts/generate_md.sh [directorio_del_build]

set -euo pipefail
shopt -s nullglob

SITE_DIR="${1:-_site}"
MD_DIR="md"

if [ ! -d "$SITE_DIR" ]; then
  echo "Error: primero compila el sitio; no existe $SITE_DIR" >&2
  exit 1
fi

echo "Generando versiones markdown para AEO..."
mkdir -p "$SITE_DIR/$MD_DIR"

# Copiar archivos markdown de posts
for post in _posts/*.md; do
  filename=$(basename "$post")
  cp "$post" "$SITE_DIR/$MD_DIR/$filename"
done

# Solo páginas públicas: nunca README, guías de despliegue ni notas internas.
public_pages=(index.md sobre-mi.md cv.md proyectos.md publicaciones.md contacto.md blog/index.md)
for page in "${public_pages[@]}"; do
  [ -f "$page" ] || continue
  mkdir -p "$SITE_DIR/$MD_DIR/$(dirname "$page")"
  cp "$page" "$SITE_DIR/$MD_DIR/$page"
done

echo "✓ Archivos markdown generados en $SITE_DIR/$MD_DIR/"
