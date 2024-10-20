@echo off
net stop "Print Spooler"
taskkill /F /IM printfilterpipelinesvc.exe
del /Q /F "C:\Windows\System32\spool\PRINTERS\*"
net start "Print Spooler"