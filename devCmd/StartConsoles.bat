@echo on
set curdir=%~dp0
cd /d %curdir%

for /r .\consoles %%i in (*.lnk) do (
start cmd /c %%~fi
timeout /t 1
)