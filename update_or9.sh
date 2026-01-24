#!/bin/bash
# LUPP-OR9 VIRTUALIZATION & METRICS OPERATOR
TARGET_FILE=$(find . -name "index.html" -not -path "*/go/*" -not -path "*/node_modules/*" | head -n 1)

if [ -n "$TARGET_FILE" ]; then
    TARGET_DIR=$(dirname "$TARGET_FILE")
    cd "$TARGET_DIR"
    DATE=$(date '+%Y-%m-%d')
    
    echo -e "\e[1;32m[*] Nodo Maestro detectado. Iniciando Auditoría de Tráfico...\e[0m"
    
    # --- MÉTRICAS DE VIRALIDAD (GitHub API) ---
    # Nota: Muestra las vistas de los últimos 14 días
    echo -e "\e[1;36m[MÉTRICAS DE IDENTIDAD - REPOSITORIO OR9]\e[0m"
    curl -s -u "urielcabeza2-spec" https://api.github.com/repos/urielcabeza2-spec/identidad-or9/traffic/views | grep -E "count|uniques" | sed 's/[",]//g'
    
    # --- PROCESO DE ACTUALIZACIÓN ---
    find . -maxdepth 2 -type f -not -path '*/.*' -exec sha256sum {} + > CHECKSUMS.txt
    sed -i "/\[ LOG DE ACTIVIDAD - VERIFICACIÓN CONTINUA \]<\/p>/a \    <li>v1.2.0 - [$DATE] - Integración de Métricas de Viralidad y Monitor de Tráfico</li>" index.html
    
    git add index.html CHECKSUMS.txt update_or9.sh .gitignore .banner.sh
    git commit -m "METRICS: v1.2.0 Deployment - Viral Traffic Monitor Active"
    git push origin main
    echo -e "\e[1;32m[✓] Nodo v1.2.0 Actualizado. Datos de tráfico sincronizados.\e[0m"
else
    echo -e "\e[1;31m[!] ERROR: No se localizó el punto de identidad.\e[0m"
fi
