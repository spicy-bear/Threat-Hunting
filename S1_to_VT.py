#Import modules
import requests
import json

# SentinelOne API variables
sentinel_one_api_key = "your_sentinel_one_api_key"
sentinel_one_endpoint = "https://your_sentinel_one_url"
file_id = "your_uploaded_file_id"

# VirusTotal API variables
virustotal_api_key = "your_virustotal_api_key"
virustotal_url = "https://www.virustotal.com/api/v3/files"

# Download file sample from SentinelOne
headers_sentinel_one = {
    "Authorization": f"ApiToken {sentinel_one_api_key}"
}

download_url = f"{sentinel_one_endpoint}/api/v2.1/files/{file_id}/download"
response_sentinel_one = requests.get(download_url, headers=headers_sentinel_one)

# Check if the file was downloaded successfully
if response_sentinel_one.status_code == 200:
    file_content = response_sentinel_one.content

    # Send the downloaded file sample to the VirusTotal API for analysis
    headers_virustotal = {
        "x-apikey": virustotal_api_key
    }
    files = {
        'file': (f"{file_id}.bin", file_content)
    }

    response_virustotal = requests.post(virustotal_url, headers=headers_virustotal, files=files)

    # Check if the file was submitted successfully
    if response_virustotal.status_code == 200:
        response_data = json.loads(response_virustotal.text)
        print(f"File submitted successfully. Analysis ID: {response_data['data']['id']}")
    else:
        print(f"Error submitting file to VirusTotal. Status code: {response_virustotal.status_code}")

else:
    print(f"Error downloading file from SentinelOne. Status code: {response_sentinel_one.status_code}")
