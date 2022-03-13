@echo off

:: MinGW
set ls=ls -FN --color --show-control-chars --time-style="+%%Y-%%m-%%d %%H:%%M:%%S"
doskey ls=%ls% $*
doskey ll=%ls% -alhG $*
doskey la=%ls% -A $*
doskey l=%ls% -CF $*
doskey du=du -h $*
doskey grep=grep --color=always $*
doskey fgrep=fgrep --color=always $*
doskey egrep=egrep --color=always $*

:: Others
doskey ctree=tree.exe -N $*
doskey $?=echo %%errorlevel%%

:: Windows
doskey expl=explorer $*
doskey cd=cd /d $*
doskey ~=cd /d "%USERPROFILE%\$*"
doskey ~d=cd /d "%USERPROFILE%\Desktop\$*"

:: Prompt
:: prompt $e[104m$p$e[0m$g
prompt $e[104m$p$e[0m$$ 

@echo on
