@echo %DEBUG% off
set PATH=%PATH%;%DynPE_Root%\INIT\System32

%message% ��ʼ��PEϵͳ����

START /D%WinDir%\system32 LSASS.EXE
START /D%WinDir%\system32 SERVICES.EXE

isocmd -f 36 > nul

if errorlevel 1 goto :setvram

:reload

PECMD.EXE FBWF P40 L32 H96


if not exist "%DynPE_ROOT%\Kernel.zip" goto error_kernel
call Cmds\unzip.exe -n "%DynPE_ROOT%\kernel.zip" -d "%SYSTEMROOT%"

%message% ��ʼ����ϡ�



goto :eof

:setvram
%message% �����ڴ治��, ���������ڴ�...
showdrive.exe

for %%i in (C: D: E: F: G: H: I: J: K: L: M: N: O: P: Q: R: S: T:) DO (
	if exist %%i\pagefile.sys (del /f /q /aSH %%i\pagefile.sys > nul)
)

setpagefile.exe

isocmd -f 48 > nul

if errorlevel 1 (
	%message% û�����������ڴ�������ڴ治�㣬������������ʾ��ģʽ��
	%message% ����^<Exit^>����������
	set PECMD=
	goto :eof
)

%message% �����ڴ�������ɡ�
%message% ��������...
goto :reload


