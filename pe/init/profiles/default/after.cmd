@echo off

if exist Z:\system %message% �����Ѿ�����.&goto end
if exist "%DynPE_Root%\iso\%DynPE_Name%.iso" goto :mount_iso else (
	if exist "%DynPE_Root%\iso\%DynPE_Name%.isz" goto :mount_isz else (
		if exist "%DynPE_Root%\iso\%DynPE_Name%" goto :mount_dir else (
			goto :ERROR
		)
	)
)
GOTO :ERROR

:mount_iso
%message% ����%DynPE_Root%\iso\%DynPE_Name%.iso��ӳ��ΪZ:��
isocmd -mount z: %DynPE_Root%\iso\%DynPE_Name%.iso >nul
goto :load_kenel

:mount_isz
%message% ����%DynPE_Root%\iso\%DynPE_Name%.isz��ӳ��ΪZ:��
isocmd -mount z: %DynPE_Root%\iso\%DynPE_Name%.isz >nul
goto :load_kenel

:mount_dir
%message% ����%DynPE_Root%\iso\%DynPE_Name%��ӳ��ΪZ:��
PECMD.EXE SUBJ z:,%DynPE_Root%\iso\%DynPE_Name% 
goto :load_kenel

:load_kenel
SET TP=Z:\system
SET PECMD_CONFIG=Z:\PECMD_FULL.INI
goto end


:ERROR

:END
