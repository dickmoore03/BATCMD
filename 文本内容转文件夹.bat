@echo off
set /p importTxt=[请输入你已经准备好的txt文件的全路径]
set /p outputPath=[请输入你要将生成的目录保存到的路径]
for /f "tokens=1 delims=" %%j in ('more %importTxt%') do mkdir %outputPath%\%%j
set /p over=目录生成完毕，请按回车退出该程序。