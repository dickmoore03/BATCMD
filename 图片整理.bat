@echo off


for /f %%j in ('dir /b /on *.jpg') do mkdir .\%%~nj\ && Move %%j .\%%~nj\%%j
set /p over=目录生成完毕，请按回车退出该程序。