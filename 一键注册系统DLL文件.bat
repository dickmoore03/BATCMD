@echo off 
color a 
for /f %%i in ('dir /a /b %windir%\system32\*.dll') do echo 正在注册%%i,请稍候... & regsvr32 /s "%windir%\system32\%%i"
echo 注册完成,按任意键退出... 
pause>nul 
exit

