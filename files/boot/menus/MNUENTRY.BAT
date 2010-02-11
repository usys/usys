@ECHO OFF
if "%1"=="" GOTO END

echo title  %1
echo        map --unsafe-boot %1 (fd1)
echo        map --hook
echo        chainloader (fd0)+1
echo        rootnoverify (fd0)

:END
