@echo off&set "ko=                        "
setlocal enabledelayedexpansion
for /f "delims= " %%a in ('help^|findstr /i "^[a-z]"') do (
   set /a n+=1&set _!n!=%%a!ko!
)
set _72=¹²71¸öÃüÁî
:loop
color 1f&title cmd ÃüÁî°ïÖú
for /l %%a in (1 3 !n!) do (
   set /a t=%%a+1,s=t+1
   if !t! lss 10 (set l=0) else set "l="
   call echo !l!%%a. !_%%a:~0,20! !l!!t!. %%_!t!:~0,20%% !l!!s!. %%_!s!:~0,10%%
)
set /p m=ÇëÊäÈë±àºÅ²éÑ¯ÏàÓ¦ÃüÁî°ïÖú£º&cls
set /a m=100!m!%%100
call set ok=%%_!m!%%
title %ok:~0,10% ÃüÁî°ïÖú&color 1e
%ok% /? | more
color 5a&echo.&echo °´ÈÎÒâ¼ü»ØÖ÷²Ëµ¥¡£¡£¡£
pause>nul
cls&goto loop
