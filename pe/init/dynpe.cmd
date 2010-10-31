@echo on
pushd "%DynPE_Root%\INIT"
set DynPE_Name=DynPE
call Modules\RegFun.cmd %DynPE_Name%

%message% ø™ ºº”‘ÿ≈‰÷√°£°£°£
if exist profiles\last.cmd goto loadLast
if exist profiles\default.cmd goto loadDefault
goto error_profile

:loadLast
%message% Loading last profile...
call profiles\last.cmd
goto profile_end

:loadDefault
%message% loading default profile...
call profiles\default.cmd
goto profile_end

:profile_end
if NOT "%PECMD_BEFORE%" == "" (
	call %PECMD_BEFORE%
)
SET PECMD_BEFORE=

if NOT "%PECMD_MAIN%" == "" (
	call profiles\pecmd.cmd
	SET PECMD_MAIN=
	if NOT "%PECMD_AFTER%" == "" call %PECMD_AFTER%
	SET PECMD_AFTER=
	call modules\unregfun.cmd
	PECMD.EXE MAIN PECMD.INI
)
if NOT "%PECMD_AFTER%" == "" call %PECMD_AFTER%
SET PECMD_AFTER=

:end
call modules\unregfun.cmd




