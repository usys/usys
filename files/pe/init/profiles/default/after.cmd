@echo off

if exist Z:\system %message% 外置已经载入.&goto end
if exist "%DynPE_Root%\iso\%DynPE_Name%.iso" goto :mount_iso else (
	if exist "%DynPE_Root%\iso\%DynPE_Name%.isz" goto :mount_isz else (
		if exist "%DynPE_Root%\iso\%DynPE_Name%" goto :mount_dir else (
			goto :ERROR
		)
	)
)
GOTO :ERROR

:mount_iso
%message% 将“%DynPE_Root%\iso\%DynPE_Name%.iso”映射为Z:盘
isocmd -mount z: %DynPE_Root%\iso\%DynPE_Name%.iso >nul
goto :load_kenel

:mount_isz
%message% 将“%DynPE_Root%\iso\%DynPE_Name%.isz”映射为Z:盘
isocmd -mount z: %DynPE_Root%\iso\%DynPE_Name%.isz >nul
goto :load_kenel

:mount_dir
%message% 将“%DynPE_Root%\iso\%DynPE_Name%”映射为Z:盘
PECMD.EXE SUBJ z:,%DynPE_Root%\iso\%DynPE_Name% 
goto :load_kenel

:load_kenel
SET TP=Z:\system
SET PECMD_CONFIG=Z:\PECMD_FULL.INI
goto end


:ERROR

:END
