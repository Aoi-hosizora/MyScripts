@echo off

:: cmdow | grep "Genymotion for" | head -n 1 | cut -f 1 -d " "
FOR /F "delims=*" %%h in ('cmdow ^| grep "Genymotion for" ^| head -n 1 ^| cut -f 1 -d " "') do SET hwnd=%%h
cmdow %hwnd% /top
