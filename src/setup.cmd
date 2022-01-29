@echo off
echo Installing StayEducated Version 0.1 to your Machine!
echo Check if python is installed...
echo/

:: Check for Python Installation
python --version 3>NUL
if errorlevel 1 goto errorNoPython

:: Reaching here means Python is installed.
echo Python Installed!
echo Continuing Installation!
echo/

:: Install important Libraries
echo Installing "schedule" pip package
pip install schedule
echo/

:: Copy Python File, Goto Final Directory and paste it
echo Copying File
copy stay_educated.pyw "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
echo/

:: Once done, exit the batch file after user input
echo Installation was Successful! You can now close this Window.
pause
goto:EOF

:: Python is not installed
:errorNoPython
echo/
echo Error: Python is not installed.
echo Please install Python and try again.

pause