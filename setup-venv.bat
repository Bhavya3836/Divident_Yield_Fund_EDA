@echo off
echo -----------------------------
echo   Virtual Environment Setup
echo -----------------------------

REM Check if venv folder exists
IF EXIST "DividentYield_V1\" (
    echo Virtual environment already exists.
) ELSE (
    echo Creating virtual environment...
    python -m venv venv
)

echo Activating virtual environment...
call venv\Scripts\activate

echo Venv successfully activated!
echo Python version:
python --version

pause
