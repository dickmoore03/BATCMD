@echo off

for /f "tokens=1,2 delims=-" %%i in ('dir /b *.avi') do mkdir "%%i" >nul >nul

for /f "tokens=1,2 delims=-" %%j in ('dir /b *.avi') do Move "%%j-%%k" ".\%%j\%%j - %%k" >nul

set /p over=�ļ��ƶ���ɣ��밴�س��˳��ó���
