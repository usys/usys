@echo off
title DynPE Console
echo.����PEĿ¼.....

:SearchDriver
for %%i in (\ \DYNPE \PE\DYNPE \PE \MINI \WXPE) DO (
    for %%j in (C: D: E: X: C: F: G: H: I: J: K: L: M: N: O: P: Q: R: S: T: U: V: W: Y: Z:) DO (
        if exist %%j%%i\Init\STARTPE.CMD (set DynPE_ROOT=%%j%%i&goto ReStart)
        if exist "%%j%%i\Init\DynPe.cmd" (set DynPE_Root=%%j%%i&goto StartInit)
    )
)



:ERROR
ECHO.�Ҳ���PEĿ¼.
ECHO.����^<Exit^>����������
goto end

:StartInit
ECHO.�ɹ���%DynPE_Root%
call "%DynPE_Root%\Init\DynPE.cmd"

:END

