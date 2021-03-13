@echo off

doskey ll=ls -alFh $*
doskey la=ls -A $*
doskey l=ls -CF $*

doskey go2go=go2 tool go2go $*

set ~=%USERPROFILE%
doskey cd~=cd "%USERPROFILE%\$*"
doskey cdd=cd "%USERPROFILE%\Desktop$*"
doskey ~=cd "%USERPROFILE%\$*"
doskey ~d=cd "%USERPROFILE%\Desktop\$*"

@echo on
