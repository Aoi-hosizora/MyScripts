@echo off

set origin=%1
set generated=generated_%1

gm convert %origin% %generated%
if "%2" == "/R" ( :: Replace
	del %origin%
	rename %generated% %origin%
)

@echo on
