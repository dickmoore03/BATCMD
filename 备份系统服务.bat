@echo off
rem  获得当前日期和时间
for /f "tokens=1, 2, 3, 4 delims=-/. " %%j in ('Date /T') do set FILENAME=SRV_%%j_%%k_%%l_%%m
for /f "tokens=1, 2 delims=: " %%j in ('TIME /T') do set FILENAME=%FILENAME%_%%j_%%k.bat

rem 获取所有服务名称
sc query type= service state= all| findstr /r /C:"SERVICE_NAME:" >tmpsrv.txt
echo Save Service Start State In %FILENAME%
rem 将系统服务状态保存为批处理文件 
rem

echo @echo 系统服务状态保存于 %TIME% %DATE% >"%FILENAME%" 
echo @pause >>"%FILENAME%"

for /f "tokens=2 delims=:" %%j in (tmpsrv.txt) do @( sc qc %%j |findstr  START_TYPE >tmpstype.txt &&  for /f "tokens=4 delims=:_ " %%s in ( tmpstype.txt) do @echo sc config  %%j start= %%s >>"%FILENAME%")
echo @pause >>"%FILENAME%"

del tmpsrv.txt
del tmpstype.txt