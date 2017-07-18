@echo off
cd /d %~dp0
:home
	echo Press 1 to start rerolling.
	echo Press 2 to start roll scanner.
    echo Press 3 to open rolls folder.
	echo Press 4 to exit.
	echo:
	set /p answer=What do you want to do? 
    if /i "%answer:~,1%" EQU "1" goto reroll
    if /i "%answer:~,1%" EQU "2" goto scan
    if /i "%answer:~,1%" EQU "3" goto folder
    if /i "%answer:~,1%" EQU "4" exit /b
	echo:
	goto home
	
:reroll
	echo:
	echo Launching reroller.
	echo:
	start "Reroller" "%~dp0Reroller.bat"
	goto home
	
:scan
	echo:
	echo Launching roll scanner.
	echo:
	start "Roll Scanner" "%~dp0Roll Scanner.bat"
	goto home

:folder
    echo:
    echo Opening folder...
    start .\rolls
    echo:
    echo Rolls folder opened. 
    echo:
    goto home