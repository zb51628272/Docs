rem procdump -ma -i E:\test
@rem procdump -ma -i E:\test
:: rem procdump -ma -i E:\test
SET DMPPATH=E:\test
SC CONFIG WerSvc START= AUTO
NET START WerSvc
ECHO Start Completed
 
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AeDebug\Debugger /f
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\.NETFramework\DbgManagedDebugger /f
 
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows NT\CurrentVersion\AeDebug\Debugger /f
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\.NETFramework\DbgManagedDebugger /f
 
ECHO Delete Completed
 
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\Windows Error Reporting\LocalDumps\w3wp.exe"  /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\Windows Error Reporting\LocalDumps\w3wp.exe"  /t REG_SZ  /v DumpFolder /d   %DMPPATH% /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\Windows Error Reporting\LocalDumps\w3wp.exe"  /t REG_DWORD   /v DumpCount /d  2 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\Windows Error Reporting\LocalDumps\w3wp.exe"  /t REG_DWORD   /v DumpType /d  2 /f
 
ECHO Enable Completed
 
PAUSE