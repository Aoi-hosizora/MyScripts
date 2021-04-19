@echo off

set ls=ls -FN --color --show-control-chars --time-style="+%%Y-%%m-%%d %%H:%%M:%%S"
doskey ls=%ls% $*
doskey ll=%ls% -alhG $*
doskey la=%ls% -A $*
doskey l=%ls% -CF $*
doskey du=du -h $*

doskey go2go=go2 tool go2go $*

doskey cd=cd /d $*
doskey ~=cd /d "%USERPROFILE%\$*"
doskey ~d=cd /d "%USERPROFILE%\Desktop\$*"

@echo on
