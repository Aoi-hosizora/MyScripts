@echo off

set arg1=%1
set arg2=%2

if "%arg1%" == "/?" goto usage
if "%arg1%" == "" goto default
goto ndefault

:usage
echo Usage: proxyenv [^<ip^> ^<port^>]
goto eof

:default
set HTTP_PROXY=http://127.0.0.1:12334
set HTTPS_PROXY=http://127.0.0.1:12334
set NO_PROXY=localhost,127.0.0.1,::1
goto eof

:ndefault
set HTTP_PROXY=http://%arg1%:%arg2%
set HTTPS_PROXY=http://%arg1%:%arg2%
set NO_PROXY=localhost,127.0.0.1,::1
goto eof

:eof
@echo on
