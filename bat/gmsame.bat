@echo off

set arg1=%1
set arg2=%2
set arg1=%arg1:"=%
echo %arg1% %arg2%

if "%arg1%" == "/?" goto usage
if "%arg1%" == ""   goto usage
if "%arg2%" == ""   goto gm
if "%arg2%" == "/R" goto gm
goto usage

:usage
echo Usage: gmsame filename [/R]
goto eof

:gm
set origin="%arg1%"
set generated="generated_%arg1%"
echo Using "gm convert ..."
gm convert %origin% %generated%
if "%2" == "/R" ( :: Replace
    del %origin%
    rename %generated% %origin%
)
goto eof

:eof
@echo on
