@ECHO OFF
REM  ==================================
REM  FILE:   buildmnu.bat
REM  AUTHOR: xiaoranzzz
REM  DESC:   buildmnu
REM  ==================================

IF NOT "%1"=="" GOTO REDIRECT

set DN=\boot\images

for %%f in (%DN%\*.fd) do %COMSPEC% /C mnuentry %%f
for %%f in (%DN%\*.img) do %COMSPEC% /C mnuentry %%f

echo title Back to main menu
echo    configfile /menu.lst

set DN=

GOTO END

:REDIRECT
%COMSPEC% /C buildmnu.bat >%1

:END




