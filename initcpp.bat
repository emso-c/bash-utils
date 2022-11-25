::======================================================
:: A SCRIPT TO QUICKLY INITIALIZE C++ FILES
::======================================================
@ECHO OFF

SETLOCAL
setlocal EnableDelayedExpansion
IF "%~1"=="" (
    ECHO Incorrect syntax: argument expected
    GOTO :EOF
)
set filename=%1


::create/overwrite file
if exist .\%filename% (
    echo %filename% already exists, do you want to overwrite it?
    goto QUESTION
) else (
    type NUL > %filename%
    echo %filename% created
    GOTO INITFILE
)

:QUESTION
set /p overwrite=[y/n]: 
if %overwrite%==y (
    type NUL > %filename%
    echo %filename% overwritten
    goto :INITFILE
) else (
    if %overwrite%==n (
        goto :EOF
    ) else (
        echo Please only enter y or n
        goto QUESTION
    )
)

:INITFILE
::SET cpptemplate=multiline?
cmd.exe /c echo #include iostream >> %filename%
cmd.exe /c echo using namespace std; >> %filename% 
cmd.exe /c echo. >> %filename%
cmd.exe /c echo int main() { >> %filename% 
cmd.exe /c echo. >> %filename% 
cmd.exe /c echo    return 0; >> %filename% 
cmd.exe /c echo } >> %filename% 



echo.
ENDLOCAL