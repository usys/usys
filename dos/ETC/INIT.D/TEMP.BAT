@echo off
if "%TEMP%"=="" goto set_temp
goto set_tmp
:set_temp
call export.bat TEMP %FS_ROOT%\tmp
:set_tmp
if not "%TMP%"=="" goto end
call export.bat TMP %FS_ROOT%\tmp

:end


