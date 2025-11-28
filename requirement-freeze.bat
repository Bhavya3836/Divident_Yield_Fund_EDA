@echo off
echo Checking for virtual environment...

REM Check if venv exists
IF NOT EXIST "DividentYield_V1\" (
    echo No venv found!
    echo Please run setup-venv.bat first.
    pause
    exit /b
)

echo Activating venv...
call venv\Scripts\activate

echo Freezing requirements...
pip freeze > requirements.txt

echo Requirements saved to requirements.txt
pause
