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
