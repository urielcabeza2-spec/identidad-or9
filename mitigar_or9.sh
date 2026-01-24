#!/bin/bash
# LUPP_VALIDATED - Kit de Auditoría para CVE-2026-0322
echo "----------------------------------------------------"
echo "  AUDITORÍA DE SEGURIDAD OR9 - Luis Uriel Pimentel  "
echo "----------------------------------------------------"
echo "[*] Verificando vulnerabilidad en libpng..."

if command -v libpng-config >/dev/null 2>&1; then
    VERSION=$(libpng-config --version)
    echo "[+] Versión detectada: $VERSION"
    # Lógica de verificación basada en el reporte de Red Hat (RHEL 8.6)
    if [[ "$VERSION" < "1.6.38" ]]; then
        echo "[!] ALERTA: Versión vulnerable a CVE-2026-0322 detectada."
        echo "[!] Acción recomendada: Actualizar libpng a la versión estable más reciente."
    else
        echo "[✓] El sistema parece estar protegido contra CVE-2026-0322."
    fi
else
    echo "[?] libpng no detectada vía config. Verificando librerías compartidas..."
    find /usr/lib /data/data/com.termux/files/usr/lib -name "libpng*" 2>/dev/null
fi
echo "----------------------------------------------------"
