@echo off
set /p importTxt=[���������Ѿ�׼���õ�txt�ļ���ȫ·��]
set /p outputPath=[��������Ҫ�����ɵ�Ŀ¼���浽��·��]
for /f "tokens=1 delims=" %%j in ('more %importTxt%') do mkdir %outputPath%\%%j
set /p over=Ŀ¼������ϣ��밴�س��˳��ó���