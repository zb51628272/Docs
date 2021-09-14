@echo off
SET PubFolder="D:\devTest\publish"
rmdir /s/q %PubFolder%
mkdir %PubFolder%

C:
cd C:\Windows\Microsoft.NET\Framework\v4.0.30319
@echo on
aspnet_compiler -p D:\dev\NEO-SZ-006-Projects\src\SH.Simm.PMS-ZS\NeoSuitePurChase\NeoSuiteBackground -v / %PubFolder% -u
start %PubFolder%
pause