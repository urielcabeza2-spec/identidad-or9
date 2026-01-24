import socket
import sys

# Usaremos la IP que detectamos antes
ip = "192.168.1.4" 

print(f"--- Iniciando Escaneo en {ip} ---")

for puerto in range(1, 1025):
    # Crear el socket
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    # Tiempo de espera corto para que sea rápido
    s.settimeout(0.01)
    
    # Intentar la conexión
    resultado = s.connect_ex((ip, puerto))
    
    if resultado == 0:
        print(f"[+] Puerto {puerto} ABIERTO")
    
    s.close()

print("--- Escaneo Finalizado ---")
