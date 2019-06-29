@echo off

if "%1" == "help" goto hlp
if "%1" == "" goto def
goto num

:def
echo git rebase -i HEAD~3
git rebase -i HEAD~3
goto :eof

:num
echo git rebase -i HEAD~%1
git rebase -i HEAD~%1
goto :eof

:hlp
echo.
echo USAGE:
echo    gitfix [$num = 3]
echo       git rebase -i HEAD~$num
goto :eof

@echo on