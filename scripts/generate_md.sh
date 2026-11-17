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

# conferencias.md es la fuente de la página. Este script no reclasifica eventos:
# si una línea dice «próximo» junto a una fecha que ya pasó, se detiene
# para no volver a publicar ese estado.
reject_past_events_marked_upcoming() {
  local page="conferencias.md"
  [ -f "$page" ] || return 0
  python3 - "$page" <<'PY'
import re
import sys
from datetime import date
from pathlib import Path

path = Path(sys.argv[1])
text = path.read_text(encoding="utf-8")
months = {
    "ene": 1, "enero": 1,
    "feb": 2, "febrero": 2,
    "mar": 3, "marzo": 3,
    "abr": 4, "abril": 4,
    "may": 5, "mayo": 5,
    "jun": 6, "junio": 6,
    "jul": 7, "julio": 7,
    "ago": 8, "agosto": 8,
    "sep": 9, "sept": 9, "septiembre": 9,
    "oct": 10, "octubre": 10,
    "nov": 11, "noviembre": 11,
    "dic": 12, "diciembre": 12,
}
today = date.today()
failed = False
date_re = re.compile(
    r"(\d{1,2})\s+(?:de\s+)?([A-Za-zÁÉÍÓÚáéíóúñ]+)\.?\s+(?:de\s+)?(20\d{2})",
    re.IGNORECASE,
)
for lineno, line in enumerate(text.splitlines(), 1):
    if not re.search(r"pr[oó]xim", line, re.IGNORECASE):
        continue
    for match in date_re.finditer(line):
        month = months.get(match.group(2).lower())
        if month is None:
            continue
        try:
            found = date(int(match.group(3)), month, int(match.group(1)))
        except ValueError:
            continue
        if found < today:
            print(
                f"Error: {path} línea {lineno} marca como próximo un evento del {found.isoformat()}, que ya pasó.",
                file=sys.stderr,
            )
            failed = True
if failed:
    sys.exit(1)
print("✓ conferencias.md no deja como próximo ningún evento con fecha pasada")
PY
}

reject_past_events_marked_upcoming

echo "Generando versiones markdown para AEO..."
mkdir -p "$SITE_DIR/$MD_DIR"

# Copiar archivos markdown de posts
for post in _posts/*.md; do
  filename=$(basename "$post")
  cp "$post" "$SITE_DIR/$MD_DIR/$filename"
done

# Solo páginas públicas: nunca README, guías de despliegue ni notas internas.
# conferencias.md entra para que /md/conferencias.md coincida con la página.
public_pages=(index.md sobre-mi.md cv.md proyectos.md publicaciones.md contacto.md conferencias.md blog/index.md)
for page in "${public_pages[@]}"; do
  [ -f "$page" ] || continue
  mkdir -p "$SITE_DIR/$MD_DIR/$(dirname "$page")"
  cp "$page" "$SITE_DIR/$MD_DIR/$page"
done

echo "✓ Archivos markdown generados en $SITE_DIR/$MD_DIR/"
