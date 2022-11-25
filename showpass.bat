@ECHO OFF
::==========================================================
:: A SCRIPT TO SHOW THE PASSWORD OF A LOGGED IN NETWORK
::==========================================================

SETLOCAL enabledelayedexpansion

::CHECK IF FIRST PARAMETER EXISTS
IF "%~1"=="" (
    ECHO Incorrect syntax: argument expected 
    GOTO :EOF
)

:: GET PARAMETER
SET PROFILE_NAME=%1

:: RUN COMMAND
CMD /c netsh wlan show profile %PROFILE_NAME% key=clear | find "Key Content"
