@ECHO OFF
REM Get list of disabled users in the domain
FOR /F "usebackq delims=;" %%A IN (`dsquery user "OU=Disabled Users,DC=suniva,DC=local" -disabled -limit 0`) DO ( 
    echo User: %%A
    REM Enumerate user's group memberOf, exclude "Domain Users" group
    FOR /F "usebackq delims=;" %%B IN (`dsget user %%A -memberof ^| find /V "Domain Users"`) DO (
        ECHO Group: %%B
        REM Remove user %%A from Group %%B
        dsmod group %%B -rmmbr %%A
    )
)
