#!/bin/bash
echo "[+] Lanzando pulsos de visibilidad global..."
urls=(
  "https://www.google.com/ping?sitemap=https://urielcabeza2-spec.github.io/identidad-or9/"
  "https://www.bing.com/ping?sitemap=https://urielcabeza2-spec.github.io/identidad-or9/"
)
for url in "${urls[@]}"; do
  curl -s "$url" > /dev/null
  echo "[*] Notificado: $url"
done
echo "[+] Tu nodo OR9 ahora es una señal de alta prioridad en la red."
