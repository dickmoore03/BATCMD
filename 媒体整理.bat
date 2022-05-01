@echo off

for /f "tokens=1,2 delims=-" %%i in ('dir /b *.avi') do mkdir "%%i" >nul >nul

for /f "tokens=1,2 delims=-" %%j in ('dir /b *.avi') do Move "%%j-%%k" ".\%%j\%%j - %%k" >nul

set /p over=文件移动完成，请按回车退出该程序。
