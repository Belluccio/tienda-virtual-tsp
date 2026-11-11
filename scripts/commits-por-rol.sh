#!/usr/bin/env bash
# Cuenta los commits de cada rol TSPi según el prefijo del mensaje.
# Uso: bash scripts/commits-por-rol.sh        Rol: [SOPORTE]
total=$(git log --oneline | wc -l)
echo "| Rol | Commits | % |"
echo "|---|---|---|"
for rol in LIDER DESARROLLO PLANEACION CALIDAD SOPORTE; do
  n=$(git log --oneline --grep="^\[$rol\]" | wc -l)
  echo "| \`[$rol]\` | $n | $(( n * 100 / total )) % |"
done
echo "| **Total** | **$total** | 100 % |"
