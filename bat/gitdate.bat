@echo off

set arg1=%1
set arg2=%2

if "%arg1%" == "/c" goto clear
if "%arg1%" == "/?" goto usage
if "%arg1%" == "" goto usage
if "%arg2%" == "" goto usage
goto action

:usage
echo Usage: gitdate ^<date^> ^<time^>
goto eof

:clear
set GIT_COMMITTER_DATE=
set GIT_AUTHOR_DATE=
echo "GIT_COMMITTER_DATE" and "GIT_AUTHOR_DATE" are both cleared.
goto eof

:action
setlocal
set slashed_date=0
if "%arg1:~4,1%" == "/" set slashed_date=1
if "%arg1:~4,1%" == "-" set slashed_date=1
set coloned_time=0
if "%arg2:~2,1%" == ":" set coloned_time=1

if %slashed_date% == 0 set date=%arg1:~0,4%-%arg1:~4,2%-%arg1:~6,2%
if %slashed_date% == 1 set date=%arg1:~0,4%-%arg1:~5,2%-%arg1:~8,2%
if %coloned_time% == 0 set time=%arg2:~0,2%:%arg2:~2,2%:%arg2:~4,2%
if %coloned_time% == 1 set time=%arg2:~0,2%:%arg2:~3,2%:%arg2:~6,2%
set datetime=%date%T%time%+08:00
endlocal & ^
set GIT_COMMITTER_DATE=%datetime% & ^
set GIT_AUTHOR_DATE=%datetime% & ^
echo "GIT_COMMITTER_DATE" and "GIT_AUTHOR_DATE" are set to "%datetime%".

:eof
@echo on
