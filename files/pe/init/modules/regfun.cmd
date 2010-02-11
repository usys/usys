@echo off
set message=echo.[%DynPE_NAME%]: 
if not "%1"=="" set message=echo.[%~1]: 
set makecall=call cmd.exe /C
