cd /
:top
cls
mode 20,30
title "PS3 Boot"
@echo off 
@set "cecho.\cecho.exe"
%cecho% {04}1=Windows{\n}2=PS3{03}{\n}
%cecho% {07} Install.usb on PS3
set /p m=choose one;
if (%m%=1) goto one
if (%m%=2) goto two
goto top

:one
@set "folder1=.\Windows.iso\"
set /p iso1=name.windows.iso;
set /p rom1=name.windows.rom;
copy "%folder1%%iso1%" "./%rom1%"
goto 7L

:two
@set "folder2=.\PS3.iso\"
set /p iso2=name.game.iso;
set /p rom2=name.game.rom;
copy "%folder2%%iso2%" "./%rom2%"
goto 7L

:7L
%cecho% {05}Made_By_Kia7L{02}
@timeout /t 5
goto top
