@echo off
SetLocal
for /F "skip=2 tokens=1-4" %%a in ('query session') DO if /i "%%b"=="%username%" set curID=%%c
for /L %%C in (0,1,20) do if "%%C" neq "%curID%" logoff %%C
logoff %curID%