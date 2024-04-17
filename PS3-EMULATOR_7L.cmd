cd /
:top
cls
mode 40,25
title "PS3-BY_KA7L"
@cecho off 
         @123456789012
@set "apk=191236791230"
@set "app=198726310541"
@set "exe=67184095Q236"
cecho {04}1=PS3.apk{\n}2=PS3.app{\n}3=PS3.exe{07}

set /a m=Choose;
if (%m%=1) & goto one
if (%m%=2) & goto two
if (%m%=3) & goto three
goto top

:one
copy "%apk% ./PS3.apk"
goto 7L

:two
copy "%app% ./PS3.app"
goto 7L

:three
copy "%exe% ./PS3.exe"
goto 7L

:7L
cecho {05}Made_By_Kia7L{02}
@timeout /t 5
goto top