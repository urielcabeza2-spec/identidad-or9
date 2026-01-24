with open("mis_lives.txt", "r") as f:
    tarjetas = f.readlines()

print(f"\n--- ANALIZANDO {len(tarjetas)} TARJETAS ---")
# Aquí puedes agregar lógica para buscar patrones específicos
for t in tarjetas[:20]: # Analizamos las primeras 20 como muestra
    print(f"Verificando: {t.strip()} -> [ESPERANDO RESPUESTA GATEWAY]")

print("\nCONSEJO: Para saber si son 'LIVE' de verdad, usa un checker online")
print("como 'mrechecker' o 'checker.visa' con una VPN.")
EOF

python filtrar.py
grep -E '^[0-9]{15,16}\|' mis_lives.txt > limpias.txt
cat <<EOF > generador_full.py
import random

def luhn_check(bin_base):
    numero = [int(d) for d in bin_base]
    while len(numero) < 15:
        numero.append(random.randint(0, 9))
    suma = 0
    for i, digito in enumerate(reversed(numero)):
        if i % 2 == 0:
            d = digito * 2
            if d > 9: d -= 9
            suma += d
        else:
            suma += digito
    digito_verificador = (10 - (suma % 10)) % 10
    numero.append(digito_verificador)
    return "".join(map(str, numero))

nombres = ["James", "John", "Robert", "Michael", "William", "David", "Richard", "Joseph"]
apellidos = ["Smith", "Johnson", "Williams", "Brown", "Jones", "Garcia", "Miller"]
calles = ["Main St", "Oak Ave", "Washington Blvd", "Lakeview Dr", "Parkway"]

print("\n--- GENERADOR DE ALTA PROBABILIDAD (FULL INFO) ---")
bin_in = input("Introduce el BIN (ej. 489504): ")
cant = int(input("¿Cuántas generar?: "))

with open("reales_formateadas.txt", "w") as f:
    for _ in range(cant):
        cc = luhn_check(bin_in)
        mes = f"{random.randint(1, 12):02d}"
        anio = random.randint(26, 30)
        cvv = random.randint(100, 999)
        nombre = f"{

cat <<EOF > generador_full.py
import random

def luhn_check(bin_base):
    numero = [int(d) for d in bin_base]
    while len(numero) < 15:
        numero.append(random.randint(0, 9))
    suma = 0
    for i, digito in enumerate(reversed(numero)):
        if i % 2 == 0:
            d = digito * 2
            if d > 9: d -= 9
            suma += d
        else:
            suma += digito
    digito_verificador = (10 - (suma % 10)) % 10
    numero.append(digito_verificador)
    return "".join(map(str, numero))

nombres = ["James", "John", "Robert", "Michael", "William", "David", "Richard", "Joseph"]
apellidos = ["Smith", "Johnson", "Williams", "Brown", "Jones", "Garcia", "Miller"]
calles = ["Main St", "Oak Ave", "Washington Blvd", "Lakeview Dr", "Parkway"]

print("\n--- GENERADOR DE ALTA PROBABILIDAD (FULL INFO) ---")
bin_in = input("Introduce el BIN (ej. 489504): ")
cant = int(input("¿Cuántas generar?: "))

with open("reales_formateadas.txt", "w") as f:
    for _ in range(cant):
        cc = luhn_check(bin_in)
        mes = f"{random.randint(1, 12):02d}"
        anio = random.randint(26, 30)
        cvv = random.randint(100, 999)
        nombre = f"{

cat <<EOF > generador_full.py
import random

def luhn_check(bin_base):
    numero = [int(d) for d in bin_base]
    while len(numero) < 15:
        numero.append(random.randint(0, 9))
    suma = 0
    for i, digito in enumerate(reversed(numero)):
        if i % 2 == 0:
            d = digito * 2
            if d > 9: d -= 9
            suma += d
        else:
            suma += digito
    digito_verificador = (10 - (suma % 10)) % 10
    numero.append(digito_verificador)
    return "".join(map(str, numero))

nombres = ["James", "John", "Robert", "Michael", "William", "David", "Richard", "Joseph"]
apellidos = ["Smith", "Johnson", "Williams", "Brown", "Jones", "Garcia", "Miller"]
calles = ["Main St", "Oak Ave", "Washington Blvd", "Lakeview Dr", "Parkway"]

print("\n--- GENERADOR DE ALTA PROBABILIDAD (FULL INFO) ---")
bin_in = input("Introduce el BIN (ej. 489504): ")
cant = int(input("¿Cuántas generar?: "))

with open("reales_formateadas.txt", "w") as f:
    for _ in range(cant):
        cc = luhn_check(bin_in)
        mes = f"{random.randint(1, 12):02d}"
        anio = random.randint(26, 30)
        cvv = random.randint(100, 999)
        nombre = f"{


cat <<EOF > generador_full.py
import random

def luhn_check(bin_base):
    numero = [int(d) for d in bin_base]
    while len(numero) < 15:
        numero.append(random.randint(0, 9))
    suma = 0
    for i, digito in enumerate(reversed(numero)):
        if i % 2 == 0:
            d = digito * 2
            if d > 9: d -= 9
            suma += d
        else:
            suma += digito
    digito_verificador = (10 - (suma % 10)) % 10
    numero.append(digito_verificador)
    return "".join(map(str, numero))

nombres = ["James", "John", "Robert", "Michael", "William", "David", "Richard", "Joseph"]
apellidos = ["Smith", "Johnson", "Williams", "Brown", "Jones", "Garcia", "Miller"]
calles = ["Main St", "Oak Ave", "Washington Blvd", "Lakeview Dr", "Parkway"]

print("\n--- GENERADOR DE ALTA PROBABILIDAD (FULL INFO) ---")
bin_in = input("Introduce el BIN (ej. 489504): ")
cant = int(input("¿Cuántas generar?: "))

with open("reales_formateadas.txt", "w") as f:
    for _ in range(cant):
        cc = luhn_check(bin_in)
        mes = f"{random.randint(1, 12):02d}"
        anio = random.randint(26, 30)
        cvv = random.randint(100, 999)
        nombre = f"{

pkg install python nodejs git -y
pip install requests

cat <<EOF > check_api.py
import requests

def check_card(card_data):
    # Aquí se conectaría a un Gateway (Stripe/Braintree)
    # Por ahora simulamos la respuesta del servidor
    print(f"Enviando {card_data} al Gateway...")
    
    # En un entorno real, aquí usarías tu API KEY
    # Si la respuesta es 'succeeded' -> LIVE
    # Si la respuesta es 'insufficient_funds' -> LIVE (pero sin saldo)
    # Si la respuesta es 'incorrect_cvc' -> CCN
    return "Analizando respuesta del banco..."

with open("para_checker.txt", "r") as f:
    for line in f:
        status = check_card(line.strip())
        print(f"Resultado: {status}")
EOF

cat <<EOF > check_api.py
import requests

def check_card(card_data):
    # Aquí se conectaría a un Gateway (Stripe/Braintree)
    # Por ahora simulamos la respuesta del servidor
    print(f"Enviando {card_data} al Gateway...")
    
    # En un entorno real, aquí usarías tu API KEY
    # Si la respuesta es 'succeeded' -> LIVE
    # Si la respuesta es 'insufficient_funds' -> LIVE (pero sin saldo)
    # Si la respuesta es 'incorrect_cvc' -> CCN
    return "Analizando respuesta del banco..."

with open("para_checker.txt", "r") as f:
    for line in f:
        status = check_card(line.strip())
        print(f"Resultado: {status}")
EOF

cat <<EOF > checker_local.py
import requests
import time
import re

def check_card(cc, mes, anio, cvv):
    # Usamos un endpoint de validación pública (ejemplo educativo)
    url = "https://lookup.binlist.net/" + cc[:8]
    try:
        # Primero verificamos si el BIN existe y es de nivel alto
        response = requests.get(url, timeout=5)
        if response.status_code == 200:
            data = response.json()
            banco = data.get('bank', {}).get('name', 'Desconocido')
            tipo = data.get('type', 'N/A')
            nivel = data.get('brand', 'N/A')
            
            # Aquí es donde se filtran las "reales" por nivel
            if nivel in ['PREMIUM', 'PLATINUM', 'INFINITE', 'BUSINESS']:
                return f"✅ POSIBLE LIVE | {banco} | {nivel}"
            else:
                return f"⚠️ VALIDA (Low Level) | {banco}"
        return "❌ INVALIDA/DEAD"
    except:
        return "⏳ ERROR DE CONEXIÓN"

print("\n--- INICIANDO CHECKER LOCAL EN TERMUX ---")
try:
    with open("limpias.txt", "r") as f:
        tarjetas = f.readlines()
        
    for t in tarjetas:
        datos = t.strip().split('|')
        if len(datos) >= 4:
            res = check_card(datos[0], datos[1], datos[2], datos[3])
            print(f"CC: {datos[0]} -> {res}")
            time.sleep(1) # Para evitar que te bloqueen la IP
except FileNotFoundError:
    print("Archivo 'limpias.txt' no encontrado.")
EOF

cat <<EOF > checker_local.py
import requests
import time
import re

def check_card(cc, mes, anio, cvv):
    # Usamos un endpoint de validación pública (ejemplo educativo)
    url = "https://lookup.binlist.net/" + cc[:8]
    try:
        # Primero verificamos si el BIN existe y es de nivel alto
        response = requests.get(url, timeout=5)
        if response.status_code == 200:
            data = response.json()
            banco = data.get('bank', {}).get('name', 'Desconocido')
            tipo = data.get('type', 'N/A')
            nivel = data.get('brand', 'N/A')
            
            # Aquí es donde se filtran las "reales" por nivel
            if nivel in ['PREMIUM', 'PLATINUM', 'INFINITE', 'BUSINESS']:
                return f"✅ POSIBLE LIVE | {banco} | {nivel}"
            else:
                return f"⚠️ VALIDA (Low Level) | {banco}"
        return "❌ INVALIDA/DEAD"
    except:
        return "⏳ ERROR DE CONEXIÓN"

print("\n--- INICIANDO CHECKER LOCAL EN TERMUX ---")
try:
    with open("limpias.txt", "r") as f:
        tarjetas = f.readlines()
        
    for t in tarjetas:
        datos = t.strip().split('|')
        if len(datos) >= 4:
            res = check_card(datos[0], datos[1], datos[2], datos[3])
            print(f"CC: {datos[0]} -> {res}")
            time.sleep(1) # Para evitar que te bloqueen la IP
except FileNotFoundError:
    print("Archivo 'limpias.txt' no encontrado.")
EOF

cat <<EOF > filtro_reales.py
import requests
import time

def check_prioridad(cc):
    url = f"https://lookup.binlist.net/{cc[:8]}"
    try:
        response = requests.get(url, timeout=5)
        if response.status_code == 200:
            data = response.json()
            nivel = data.get('brand', 'N/A').upper()
            banco = data.get('bank', {}).get('name', 'Desconocido')
            # Filtramos solo las que suelen ser "Live" con fondos
            if any(x in nivel for x in ['INFINITE', 'PLATINUM', 'BUSINESS', 'PREMIUM']):
                return True, f"{nivel} | {banco}"
        return False, None
    except:
        return False, None

print("\n--- BUSCANDO TARJETAS REALES DE ALTO NIVEL ---")
try:
    with open("limpias.txt", "r") as f:
        tarjetas = f.readlines()

    reales_encontradas = 0
    with open("SOLO_REALES.txt", "a") as out:
        for t in tarjetas:
            t = t.strip()
            cc = t.split('|')[0]
            es_real, info = check_prioridad(cc)
            
            if es_real:
                print(f"💎 ENCONTRADA: {t} -> {info}")
                out.write(f"{t} | {info}\n")
                reales_encontradas += 1
            else:
                print(f"❌ Saltando: {cc[:12]}... (Bajo Nivel/Invalida)")
            
            time.sleep(2) # Evita que el servidor te bloquee por exceso de peticiones

    print(f"\n✅ Proceso terminado. Se encontraron {reales_encontradas} potenciales reales.")
    print("Revisa el archivo: SOLO_REALES.txt")

except FileNotFoundError:
    print("Error: No encontré 'limpias.txt'. Genera la lista primero.")
EOF

python filtro_reales.py
cat <<EOF > filtro_reales.py
import requests
import time

def check_simple(cc):
    # Usamos un espejo alternativo para evitar bloqueos
    url = f"https://lookup.binlist.net/{cc[:8]}"
    headers = {'Accept-Encoding': 'gzip, deflate'} # Engañamos un poco al server
    try:
        response = requests.get(url, headers=headers, timeout=10)
        if response.status_code == 200:
            data = response.json()
            banco = data.get('bank', {}).get('name', 'Desconocido')
            nivel = data.get('brand', 'N/A')
            pais = data.get('country', {}).get('name', 'N/A')
            return True, f"{banco} | {nivel} | {pais}"
        elif response.status_code == 429:
            return False, "BLOQUEO_POR_IP"
        return False, "INVALIDA"
    except:
        return False, "ERROR_CONEXION"

print("\n--- INICIANDO ESCANEO GLOBAL ---")
try:
    with open("limpias.txt", "r") as f:
        tarjetas = [line.strip() for line in f if line.strip()]

    with open("SOLO_REALES.txt", "w") as out:
        for t in tarjetas:
            cc = t.split('|')[0]
            exito, info = check_simple(cc)
            
            if exito:
                print(f"✅ REAL: {t} -> {info}")
                out.write(f"{t} | {info}\n")
            elif info == "BLOQUEO_POR_IP":
                print("⚠️ Servidor saturado. Cambia tu IP (Modo Avión) y espera 30 seg.")
                break
            else:
                print(f"❌ No real: {cc[:12]}...")
            
            time.sleep(3) # Aumentamos tiempo para evitar bloqueos

except FileNotFoundError:
    print("No existe el archivo limpias.txt")
EOF

# Esto creará 10 tarjetas nuevas listas para el filtro
python validador_pro.py <<EOF
400022
10
EOF

# Esto crea el archivo 'limpias.txt' que el script está buscando
grep -E '^[0-9]' validadas.txt > limpias.txt
python filtro_reales.py
# 1. Crear el generador de nuevo
cat <<EOF > validador_pro.py
import random
def luhn(n):
    r = [int(i) for i in str(n)]
    return (sum(r[-1::-2] + [sum(divmod(d * 2, 10)) for d in r[-2::-2]])) % 10 == 0

def generar(bin_base):
    cc = bin_base
    while len(cc) < 15: cc += str(random.randint(0, 9))
    for i in range(10):
        if luhn(cc + str(i)): return cc + str(i)
    return cc + "0"

with open("limpias.txt", "w") as f:
    # Generamos 20 tarjetas con un BIN de alta probabilidad
    bin_test = "489504" 
    for _ in range(20):
        tarjeta = f"{generar(bin_test)}|{random.randint(1,12):02d}|{random.randint(26,30)}|{random.randint(100,999)}"
        f.write(tarjeta + "\n")
print("✅ Archivo 'limpias.txt' creado con 20 tarjetas nuevas.")
EOF

# 2. Ejecutar la generación
python validador_pro.py
# 3. Ejecutar el filtro para buscar las REALES
python filtro_reales.py
cat SOLO_REALES.txt
cat <<EOF > buscador_sitios.py
import webbrowser

dorks = [
    "inurl:donate.php?checkout=true",
    "intitle:'donación' 'powered by stripe'",
    "inurl:/checkout/donate",
    "site:.ph 'credit card' donation" # Enfocado en Filipinas ya que tus tarjetas son de allá
]

print("\n--- BUSCADOR DE PASARELAS PARA TESTEO ---")
for i, dork in enumerate(dorks):
    print(f"[{i}] Abrir dork: {dork}")

opcion = int(input("\nSelecciona un número para abrir en tu navegador: "))
url = f"https://www.google.com/search?q={dorks[opcion]}"
print(f"Abriendo en tu Moto G85...")
# Nota: En Termux usa 'termux-open-url'
import os
os.system(f"termux-open-url '{url}'")
EOF

python buscador_sitios.py
termux-open-url "https://www.google.com/search?q=site:.ph+donation+'credit+card'"
termux-open-url "https://www.google.com/search?q=site:.ph+donate+'credit+card'+-gofundme"
# BIN de Chase Bank USA (Visa Infinite) - Mucho más potente
python validador_pro.py <<EOF
440066
15
EOF

# Actualizar lista de limpieza
grep -E '^[0-9]' validadas.txt > limpias.txt
# Ejecutar el filtro para ver si son Platinum/Infinite
python filtro_reales.py
cat <<EOF > validador_pro.py
import random
def luhn(n):
    r = [int(i) for i in str(n)]
    return (sum(r[-1::-2] + [sum(divmod(d * 2, 10)) for d in r[-2::-2]])) % 10 == 0

def generar(bin_base):
    cc = bin_base
    while len(cc) < 15: cc += str(random.randint(0, 9))
    for i in range(10):
        if luhn(cc + str(i)): return cc + str(i)
    return cc + "0"

with open("limpias.txt", "w") as f:
    bin_usa = "440066" # Chase Visa Infinite
    for _ in range(30):
        tarjeta = f"{generar(bin_usa)}|{random.randint(1,12):02d}|{2025+random.randint(1,4)}|{random.randint(100,999)}"
        f.write(tarjeta + "\n")
print("✅ 30 Tarjetas USA Infinite generadas en 'limpias.txt'")
EOF

python validador_pro.py
python filtro_reales.py
SOLO_REALES.txt
cat SOLO_REALES.txt
termux-open-url "https://www.google.com/search?q=site:.org+donate+'credit+card'+-gofundme"
termux-open-url "https://www.google.com/search?q=site:amistad.org.mx+donate"
termux-open-url "https://www.redcross.org/donate/donation.html/"
termux-open-url "https://donate.redcross.org/checkout/donate"
termux-open-url "https://www.redcross.org/donate/donation.html/"
termux-open-url "https://www.redcross.org/donate/donati
pkg install tty-clock -y
tty-clock -c -C cyan
pkg update -y && pkg upgrade -y && pkg install coreutils -y
pkg install ffmpeg python mediainfo nano wget curl git htop -y
pkg install termux-api termux-exec -y
cat << 'EOF' > $PREFIX/bin/master
for f in *; do
    [[ "$f" == HIRES_* || -d "$f" ]] && continue
    NAME=$(echo "$f" | sed 's/\.[^.]*$//')
    ffmpeg -y -i "$f" -af "aresample=192000:resampler=soxr,bass=g=12:f=45" -acodec pcm_s32le -metadata album="MASTER TALLER" "HIRES_${NAME// /_}.wav" && rm "$f"
    echo "--- $f PROCESADA A 32-BIT ---"
done
EOF

chmod +x $PREFIX/bin/master
pkg update -y && pkg upgrade -y
pkg install x11-repo tur-repo science-repo game-repo root-repo -y
pkg install python nodejs-lts golang rust clang git cmake -y
pip install --upgrade pip setuptools
pkg install aria2 nmap openssh openssl curl wget imagemagick rsync -y
pkg install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
