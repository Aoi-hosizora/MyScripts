@echo off

if "%1" == "/?" goto usage
if "%1" == "" goto usage
if "%2" == "" goto gm
if "%2" == "/R" goto gm
goto usage

:usage
echo Usage: gmsame filename [/R]
goto eof

:gm
set origin=%1
set generated=generated_%1
echo Using "gm convert ..."
gm convert %origin% %generated%
if "%2" == "/R" ( :: Replace
    del %origin%
    rename %generated% %origin%
)
goto eof

:eof
@echo on
