@SET COMSPEC=A:\COMMAND.COM
@ECHO OFF
SET PATH=A:\DOS
SET DIRCMD=/OGN /4
SET PROMPT=$P$G
@IF EXIST A:\CONFIG.QDK COPY A:\CONFIG.QDK A:\CONFIG.SYS >NUL:
@IF EXIST A:\AUTOEXEC.QDK COPY A:\AUTOEXEC.QDK A:\AUTOEXEC.BAT >NUL:
@IF EXIST OPT7$$$$ GOTO AUTOOPT
@A:\AUTOEXEC.BAT
:AUTOOPT
@IF NOT "%_4VER%" == "" SETDOS /N0
@IF NOT "%_NVER%" == "" SETDOS /N0
@ECHO #STARTING A:\AUTOEXEC.BAT @ AD >C:\QEMM\OPT$.BAT
@C:\QEMM\SWAPECHO <C:\QEMM\OPT$.BAT C:\QEMM\LOADHI.OPT
C:\QEMM\BUFFERS >C:\QEMM\OPT$.BAT
@C:\QEMM\SWAPECHO <C:\QEMM\OPT$.BAT C:\QEMM\LOADHI.OPT
BREAK ON
C:\QEMM\LOADHI /GS:,AE LFNFOR ON

GOTO %CONFIG%


:S
GOTO IMPORT

:1
GOTO IMPORT

:2
C:\QEMM\LOADHI /GS:,AD A:\DOS\SHSUCDX.COM /D:?IDE-CD
GOTO IMPORT

:3
GOTO IMPORT

:IMPORT
@C:\QEMM\OPTIMIZE /C=1 /RF=C:\QEMM\LOADHI.RF /B:A /F:4=\import.bat
@CALL C:\QEMM\OPT4.BAT

:END
set config=
echo.
echo System MS-DOS 7.10 Initialized
echo.
echo Welcome to MYPLACE
echo.


C:\QEMM\BUFFERS >C:\QEMM\OPT$.BAT
@C:\QEMM\SWAPECHO <C:\QEMM\OPT$.BAT C:\QEMM\LOADHI.OPT
@C:\QEMM\OPTIMIZE /C=1 /RF=C:\QEMM\LOADHI.RF /B:A /SEG:1932 /NF /NT C:\QEMM\LOADHI.OPT