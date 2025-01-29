@echo off
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
goto menu

:help_menu
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
set /p num1="Enter the first number: "
set /p operator="Enter operator (+, -, *, /): "
set /p num2="Enter the second number: "
set /a result=num1%operator%num2
echo Result: %result%
pause
goto menu

:random
set /p min="Enter the minimum value: "
set /p max="Enter the maximum value: "
set /a randomNum=%random% %% (max - min + 1) + min
echo Random Number: %randomNum%
pause
goto menu

:datetime
echo Current Date and Time: %date% %time%
pause
goto menu

:exit
echo Exiting Multi-tool. Goodbye!
exit