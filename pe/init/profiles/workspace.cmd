@echo off
set message=echo.[%DynPE_NAME% Workspace]: 

IF EXIST Profiles\Default.cmd CALL Profiles\Default.cmd
IF EXIST Z:\���ó���\PE_OUTERPART (
	pushd Z:\���ó���\PE_OUTERPART
	%makecall% /C Start_Sound.cmd
	%makecall% /C Start_NET.cmd
	popd
)
