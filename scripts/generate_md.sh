#!/bin/bash

# Script para generar versiones markdown de páginas Jekyll
# Uso: ./scripts/generate_md.sh

SITE_DIR="_site"
MD_DIR="md"

echo "Generando versiones markdown para AEO..."

# Crear directorio md si no existe
mkdir -p "$SITE_DIR/$MD_DIR"

# Copiar archivos markdown de posts
for post in _posts/*.md; do
  filename=$(basename "$post")
  cp "$post" "$SITE_DIR/$MD_DIR/$filename"
done

# Copiar páginas principales
for page in *.md; do
  [ -f "$page" ] || continue
  cp "$page" "$SITE_DIR/$MD_DIR/"
done

echo "✓ Archivos markdown generados en $SITE_DIR/$MD_DIR/"
