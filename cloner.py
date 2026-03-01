import requests
import time

def clone():
    print("--- CYBER SQUAD CLONER ---")
    token = input("Digite seu TOKEN (não compartilhe): ")
    src_id = input("ID do Servidor Origem: ")
    dst_id = input("ID do Servidor Destino: ")

    headers = {"Authorization": token, "Content-Type": "application/json"}
    
    # 1. Pegar canais do servidor de origem
    print(f"[*] Conectando ao servidor origem {src_id}...")
    response = requests.get(f"https://discord.com/api/v9/guilds/{src_id}/channels", headers=headers)
    
    if response.status_code != 200:
        print(f"Erro ao ler servidor origem: {response.status_code}")
        return

    channels = response.json()
    
    # 2. Criar canais no servidor de destino
    print(f"[*] Clonando {len(channels)} canais para {dst_id}...")
    for chan in channels:
        # Pular categorias (tipo 4) ou tratar de forma diferente se quiser
        if chan['type'] == 4: continue 
        
        payload = {
            "name": chan['name'],
            "type": chan['type'],
            "topic": chan.get('topic', ""),
            "nsfw": chan.get('nsfw', False)
        }
        
        create_resp = requests.post(f"https://discord.com/api/v9/guilds/{dst_id}/channels", headers=headers, json=payload)
        
        if create_resp.status_code == 201:
            print(f"[+] Canal '{chan['name']}' clonado!")
        else:
            print(f"[-] Erro ao criar '{chan['name']}': {create_resp.status_code}")
        
        time.sleep(1.5) # Importante para evitar rate limit (ban)

    print("\n[!] Processo finalizado.")

if __name__ == "__main__":
    clone()
