#simple script to watch for simple http servers popping up that have ps1 files and "directory listing for /"
#I'll try to expand to check for OR other file extensions

import requests
import json
import os
import base64
import time
from dotenv import load_dotenv

load_dotenv()
key = os.environ.get('key')
id = os.environ.get('id')
secret = os.environ.get('secret')

print("#Censys Query#")

interval = 900  # 15 minutes
output = []
processed_ips = set()

def check_for_directory_listing():
    headers = {
        "accept": "application/json",
        "Authorization": f"Basic {base64.b64encode(f'{id}:{secret}'.encode()).decode()}"
    }
    params = {
        "query": 'services.http.response.html="Directory listing for /"AND "".ps1" OR "payload""',
        "page": 1,
        "per_page": 100,
        "flatten": True
    }
    #forcing with url params are being wonky
    #url = 'https://search.censys.io/api/v2/hosts/search?q=services.http.response.html_title%3D%22Directory%20listing%20for%20%2F%22%20AND%20%22.ps1%22&per_page=50&virtual_hosts=EXCLUDE'
    #response = requests.get(url, headers=headers)

    response = requests.get("https://search.censys.io/api/v2/hosts/search", headers=headers, params=params)
    data = response.json()

    #if you just want only ips
    # hits = data.get("result", {}).get("hits", [])
    # for hit in hits:
    #     ip = hit.get("ip", "")
    #     if ip:
    #         print(ip)

    #prints ips and ALL ports
    hits = data.get("result", {}).get("hits", [])
    for hit in hits:
        ip = hit.get("ip", "")
        ports = [str(service.get("port", "")) for service in hit.get("services", [])]
        if ip and ports and ip not in processed_ips:
            output.append(f"IP: {ip}, Ports: {', '.join(ports)}")
            processed_ips.add(ip)
          
    # Save output to file
    with open("output.txt", "a") as file:
        file.write("\n".join(output))
        file.write("\n")
    print("Results saved to output.txt")
  
def main():
    while True:
        check_for_directory_listing()
        print('________________________________')
        time.sleep(interval)

if __name__ == "__main__":
    main()
