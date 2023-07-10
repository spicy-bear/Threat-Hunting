@echo off
Setlocal EnableDelayedExpansion
 
chcp 437 >nul
::// Вариации: токен 1 или 2 - это имя пользователя; токен 2 или 3 - ID
for /f "skip=2 tokens=1-4" %%a in ('query session') DO (
  Call :FindToken "%%c"
  if !errorlevel!==0 (set "user=%%b"& set "ID=%%c"& set "status=%%d") else (set "user=%%a"& set "ID=%%b"& set "status=%%c")
  set flag=false
  if "%username%" neq "!user!" (set flag=true) else (if "!status!" neq "Active" set flag=true)
  if !flag!==true (logoff !ID!& Echo user=!user! ID=!ID! Status=!status! was log off.)
)
pause
Exit /B
 
:://Возвращает 1, если в токене № 3 есть нечисловые символы
:FindToken
echo.%~1|>nul findstr /R "[^0-9]"&& exit /B 1
exit /b 0