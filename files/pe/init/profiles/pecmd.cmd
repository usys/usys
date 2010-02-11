@echo %DEBUG% off
set PATH=%PATH%;%DynPE_Root%\INIT\System32

%message% 初始化PE系统……

START /D%WinDir%\system32 LSASS.EXE
START /D%WinDir%\system32 SERVICES.EXE

isocmd -f 36 > nul

if errorlevel 1 goto :setvram

:reload

PECMD.EXE FBWF P40 L32 H96


if not exist "%DynPE_ROOT%\Kernel.zip" goto error_kernel
call Cmds\unzip.exe -n "%DynPE_ROOT%\kernel.zip" -d "%SYSTEMROOT%"

%message% 初始化完毕。



goto :eof

:setvram
%message% 可用内存不足, 设置虚拟内存...
showdrive.exe

for %%i in (C: D: E: F: G: H: I: J: K: L: M: N: O: P: Q: R: S: T:) DO (
	if exist %%i\pagefile.sys (del /f /q /aSH %%i\pagefile.sys > nul)
)

setpagefile.exe

isocmd -f 48 > nul

if errorlevel 1 (
	%message% 没有设置虚拟内存或虚拟内存不足，启动到命令提示符模式。
	%message% 输入^<Exit^>可重新启动
	set PECMD=
	goto :eof
)

%message% 虚拟内存设置完成。
%message% 继续加载...
goto :reload


