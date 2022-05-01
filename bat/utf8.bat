@echo off

if "%1" == "/?" goto :usage
if "%1" == ""   goto :usage
if not exist "%1" goto :error

for /F "tokens=* USEBACKQ" %%F in (`uchardet %1`) do (
    set charset=%%F
)
if "%charset%"=="unknown" goto :unknown
iconv -f %charset% -t utf-8 %1
goto :eof

:usage
echo Usage: %0 ^<filename^>
goto :eof

:error
echo Error: file "%1" is not found.
goto :eof

:unknown
echo Error: the charset of file "%1" is "unknown".
goto :eof
