@echo off
title Multi-Tool --By badpuppet0--
cls
:banner
echo.
echo ==========================
echo       MULTI-TOOL
echo       Made by badpuppet0
echo.
echo          Get help:
echo   https://github.com/badpuppet0/multi-tool-v1
echo ==========================
echo.

:menu
cls
echo Multi-tool Options:
echo ==========================
echo |  [1] Calculator            |
echo |  [2] Random Number Gen     |
echo |  [3] Current Date/Time     |
echo |  [4] Exit                  |
echo ==========================
set /p choice="Choose 1-4 or type 'help': "

if /i "%choice%" == "help" goto help_menu
if "%choice%" == "1" goto calculator
if "%choice%" == "2" goto random
if "%choice%" == "3" goto datetime
if "%choice%" == "4" goto exit
echo Invalid choice! Please select a valid option.
pause
goto menu

:help_menu
cls
echo ==========================
echo          HELP MENU
echo ==========================
echo This part is under construction and not ready yet!
echo Example Commands to be added:
echo - Advanced Math Functions
echo - Prime Number Checker
echo - File Encryption/Decryption Tool
echo Stay tuned for updates!
pause
goto menu

:calculator
cls
set /p num1="Enter the first number: "
set /p operator="Enter operator (+, -, *, /): "
set /p num2="Enter the second number: "

if "%operator%" == "+" set /a result=num1+num2
if "%operator%" == "-" set /a result=num1-num2
if "%operator%" == "*" set /a result=num1*num2
if "%operator%" == "/" set /a result=num1/num2
echo Result: %result%
pause
goto menu

:random
cls
set /p min="Enter the minimum value: "
set /p max="Enter the maximum value: "
set /a range=max-min+1
set /a randomNum=%random% %% range + min
echo Random Number: %randomNum%
pause
goto menu

:datetime
cls
echo Current Date and Time: %date% %time%
pause
goto menu

:exit
cls
echo Exiting Multi-tool. Goodbye!
pause
exit
