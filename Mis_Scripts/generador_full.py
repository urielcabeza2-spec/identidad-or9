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
        nombre = f"{random.choice(nombres)} {random.choice(apellidos)}"
        dir = f"{random.randint(100, 9999)} {random.choice(calles)}"
        zip_code = random.randint(10001, 99950)
        
        # Formato para Checker Pro
        linea = f"{cc}|{mes}|{anio}|{cvv}"
        f.write(f"{linea} | {nombre} | {dir} | NY | {zip_code}\n")
        print(f"Generada: {linea} ✅")

print(f"\n✅ Guardadas en: reales_formateadas.txt")
print("Usa un 'Gate Checker' para encontrar las LIVES.")
