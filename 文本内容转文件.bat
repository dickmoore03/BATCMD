@echo off
set /p importTxt=[���������Ѿ�׼���õ�txt�ļ���ȫ·��]
set /p sourceFile=[���������Ѿ�׼���õ�Դ�ļ���ȫ·��]
set /p outputPath=[��������Ҫ�����ɵ��ļ����浽��·��]
for /f "tokens=1 delims=" %%j in ('more %importTxt%') do copy %sourceFile% %outputPath%\%%j
set /p over=Ŀ¼������ϣ��밴�س��˳��ó���