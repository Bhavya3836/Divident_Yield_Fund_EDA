@echo off
echo -----------------------------
echo   Virtual Environment Setup
echo -----------------------------

REM Check if venv folder exists
IF EXIST "DividentYield_V1\" (
    echo Virtual environment already exists.
) ELSE (
    echo Creating virtual environment...
    python -m venv DividentYield_V1
)

echo Activating virtual environment...
call DividentYield_V1\Scripts\activate

echo DividentYield_V1 successfully activated!
echo Python version:
python --version

REM Install dependencies if requirements.txt exists
IF EXIST "requirements.txt" (
    echo.
    echo Installing dependencies from requirements.txt...
    python -m pip install --upgrade pip
    pip install -r requirements.txt
) ELSE (
    echo.
    echo requirements.txt not found - skipping dependency installation.
)

pause
