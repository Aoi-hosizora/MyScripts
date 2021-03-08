@echo off
bcdedit /set {default} bootmenupolicy standard

:: OS Name
:: bcdedit /set {legacy} Description "Windows XP"
:: bcdedit /set {current} description "Windows 10 JP" <<<

@echo on
