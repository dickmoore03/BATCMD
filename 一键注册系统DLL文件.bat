@echo off 
color a 
for /f %%i in ('dir /a /b %windir%\system32\*.dll') do echo ����ע��%%i,���Ժ�... & regsvr32 /s "%windir%\system32\%%i"
echo ע�����,��������˳�... 
pause>nul 
exit

