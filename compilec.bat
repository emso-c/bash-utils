::======================================================
:: A SCRIPT TO COMPILE C++ FILES
::======================================================
@ECHO OFF
SETLOCAL enabledelayedexpansion

::CHECK IF FIRST PARAMETER EXISTS
IF "%~1"=="" (
    ECHO Incorrect syntax: argument expected
    GOTO :EOF
)

::PARSE ARGS
SET filename=%1
SET extension=%filename:~-4,4%
SET filename=%filename:~0,-4%

::CHECK EXTENSION OF THE ARGUMENT
IF NOT %extension% == .cpp (
    ECHO Incorrect syntax: extension of the file has to be .cpp
    GOTO :EOF
)

::COMPILE
CMD /c "g++ %filename%.cpp -o %filename%.exe -static-libgcc -static-libstdc++"
IF %errorlevel%==0 (
    %filename%.exe
)