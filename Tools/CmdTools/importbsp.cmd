@echo off
REM Run open-ws before running this script

goto START

:Usage
echo Usage: importbsp [-BSPName] <String> [[-Source] <String>]
echo    Imports bsp into the current workspace
echo    BSPName ............ bsp to import
echo    Source ...... Optional, source workspace dir or bsp folder or bsp zip file to import from. Default is %SAMPLEWKS%
echo    [/?]............ Displays this usage string.

exit /b 1

:START

if [%1] == [/?] goto Usage
if [%1] == [-?] goto Usage
if [%1] == [] goto Usage

if not defined IOTWKSPACE (
    echo Error: No Workspace found. Open Workspace using open-ws 
    exit /b 1
)
call RunPSCommand.cmd "Import-IoTBSP" %*

exit /b 0
