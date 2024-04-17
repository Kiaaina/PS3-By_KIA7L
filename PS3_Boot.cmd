cd /
:top
cls
mode 40,25
title "PS3 Boot"
@cecho off 
cecho {04}1=Windows{\n}2=PS3{03}
cecho {07} Install.usb on PS3
set /a m=choose one;
if (%m%=1) goto one
if (%m%=2) goto two
goto top

:one
@set "folder1=./Windows.iso/"
set /a iso1=name.windows.iso;
set /a rom1=name.windows.rom;
copy "%folder1%%iso1% ./%rom1%"
goto 7L

:two
@set "folder2=./PS3.iso/"
set /a iso2=name.game.iso;
set /a rom2=name.game.rom;
copy "%folder2%%iso2% ./%rom2%"
goto 7L

:7L
cecho {05}Made_By_Kia7L{02}
@timeout /t 5
goto top