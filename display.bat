::======================================================
:: A SCRIPT TO QUICKLY SWITCH CONSOLE PAGE
::======================================================
@ECHO OFF
SETLOCAL enabledelayedexpansion

SET lan=%1

IF "%lan%"=="tr" (
	chcp 857
)
IF "%lan%"=="jp" (
    chcp 932
) 
IF "%lan%"=="" (
    chcp 65001
)



