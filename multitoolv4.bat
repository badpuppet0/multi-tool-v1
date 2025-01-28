@echo off
:banner
echo.
echo ==========================
echo       MULTI-TOOL
echo ==========================
echo.

:menu
echo Multi-tool Options:
echo 1. Calculator
echo 2. Random Number Generator
echo 3. Current Date and Time
echo 4. Exit
set /p choice="Enter your choice (1-4): "

if "%choice%" == "1" goto calculator
if "%choice%" == "2" goto random
if "%choice%" == "3" goto datetime
if "%choice%" == "4" goto exit
echo Invalid choice! Please select a valid option.
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
