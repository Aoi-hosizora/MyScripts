@echo off

set arg1=%1
set arg2=%2
set arg1=%arg1:"=%

if "%arg1%" == "/?" goto usage
if "%arg1%" == ""   goto usage
if "%arg2%" == ""   goto ffmepg
if "%arg2%" == "/R" goto ffmepg
goto usage

:usage
echo Usage: ffmpegsame filename [/R]
goto eof

:ffmepg
set origin="%arg1%"
set generated="generated_%arg1%"
echo Using "ffmpeg -i ..."
ffmpeg -i %origin% %generated%
if "%2" == "/R" ( :: Replace
    del %origin%
    rename %generated% %origin%
)
goto eof

:eof
@echo on
