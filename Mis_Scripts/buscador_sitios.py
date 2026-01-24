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
