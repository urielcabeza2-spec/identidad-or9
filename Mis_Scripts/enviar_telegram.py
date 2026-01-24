import requests

# REEMPLAZA ESTOS DATOS
TOKEN = "TU_TOKEN_DE_BOTFATHER"
CHAT_ID = "TU_ID_DE_USERINFOBOT"
ARCHIVO = "reales_formateadas.txt"

def enviar_documento():
    url = f"https://api.telegram.org/bot{TOKEN}/sendDocument"
    try:
        with open(ARCHIVO, 'rb') as f:
            files = {'document': f}
            data = {'chat_id': CHAT_ID, 'caption': "✅ Lista de tarjetas para checar."}
            r = requests.post(url, files=files, data=data)
            if r.status_code == 200:
                print("🚀 Archivo enviado a tu Telegram con éxito.")
            else:
                print("❌ Error al enviar. Revisa el Token e ID.")
    except FileNotFoundError:
        print("El archivo no existe. Genera tarjetas primero.")

enviar_documento()
