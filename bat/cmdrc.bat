@echo off

:: MinGW
set ls=ls -FN --color --show-control-chars --time-style="+%%Y-%%m-%%d %%H:%%M:%%S"
doskey ls=%ls% $*
doskey ll=%ls% -alhG $*
doskey la=%ls% -A $*
doskey l=%ls% -CF $*
doskey duh=du -h $*
doskey dud=du -ah -d 1 $*
doskey grep=grep --color=always $*
doskey egrep=grep -E --color=always $*
doskey fgrep=grep -F --color=always $*

:: Others
doskey ctree=tree.exe -N $*
doskey $?=echo %%errorlevel%%
doskey nppcode=npp -openFoldersAsWorkspace $*

:: Windows
doskey expl=explorer $*
doskey cd=cd /d $*
doskey ~=cd /d "%USERPROFILE%\$*"
doskey ~d=cd /d "%USERPROFILE%\Desktop\$*"

:: Prompt
:: prompt $e[104m$p$e[0m$g 
prompt $e[104m$p$e[0m$$ 

@echo on
