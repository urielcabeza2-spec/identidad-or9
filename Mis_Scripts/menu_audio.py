import os

def mostrar_menu():
    print("\n" + "="*40)
    print("   GOLDEN RATIO - PERFILES DE AUDIO")
    print("="*40)
    print("1. Pedro Infante / Marco A. Solis (Voz de Oro)")
    print("2. Jenni Rivera (Poder y Garra)")
    print("3. Los Tigres del Norte (Realismo Norteño)")
    print("4. Rush (The Cygnus-X1 Precision)")
    print("5. José José (Fidelidad de Oro)")
    print("6. Juan Gabriel (Espectáculo Total)")
    print("7. Daniel Boaventura (Velvet Voice)")
    print("8. The Who (Maximum R&B)")
    print("9. Steve Miller Band (Space Cowboy)")
    print("10. Led Zeppelin (Valvular/WAV)")
    print("0. Salir")
    print("="*40)

perfiles = {
    "1": "COMPRESOR: Sidechain 180Hz | Ataque 45ms | Ratio 1.8:1\nEQ: Realce en 950Hz (+4.5dB) para cuerpo de voz.",
    "2": "COMPRESOR: Sidechain 150Hz | Ataque 25ms | Ratio 2.5:1\nEQ: Tuba en 50Hz (+5dB) y Voz en 1500Hz (+4dB).",
    "3": "COMPRESOR: Sidechain 120Hz | Ataque 38ms | Ratio 2.0:1\nEQ: Corte en 140Hz para limpiar bajo 'gomoso'.",
    "4": "COMPRESOR: Sidechain 160Hz | Ataque 50ms | Ratio 1.5:1\nEQ: Brillo en 8500Hz para platillos de Peart.",
    "5": "COMPRESOR: Sidechain 220Hz | Ataque 55ms | Ratio 1.6:1\nEQ: Magia en 1100Hz (+5dB). Máxima dinámica.",
    "6": "COMPRESOR: Sidechain 200Hz | Ataque 40ms | Ratio 1.8:1\nEQ: Escenario en 14500Hz (+5dB) para efecto teatro.",
    "7": "COMPRESOR: Sidechain 280Hz | Ataque 65ms | Ratio 1.5:1\nEQ: Resonancia de pecho en 310Hz (+4.5dB).",
    "8": "COMPRESOR: Sidechain 130Hz | Ataque 30ms | Ratio 2.2:1\nEQ: Bajo Entwistle en 750Hz. Corte en 4200Hz.",
    "9": "COMPRESOR: Sidechain 150Hz | Ataque 45ms | Ratio 1.8:1\nEQ: Sintetizadores en 8000Hz y 15000Hz.",
    "10": "COMPRESOR: Sidechain 130Hz | Ataque 35ms | Ratio 2.0:1\nEQ: Bombo Bonham en 60Hz. Guitarra Page en 800Hz."
}

while True:
    mostrar_menu()
    opcion = input("Selecciona un artista para ver el ajuste: ")
    if opcion == "0":
        break
    elif opcion in perfiles:
        print("\n" + "*"*30)
        print(f"CONFIGURACIÓN PARA {opcion}:")
        print(perfiles[opcion])
        print("*"*30)
        input("\nPresiona Enter para volver al menú...")
    else:
        print("\nOpción no válida.")
