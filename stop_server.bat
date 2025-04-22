@echo off
echo [INFO] Looking for uvicorn or python processes...

REM Try to find uvicorn.exe directly
for /f "tokens=2 delims=," %%a in ('tasklist /FI "IMAGENAME eq uvicorn.exe" /FO CSV /NH') do (
    echo [INFO] Killing uvicorn.exe with PID %%~a
    taskkill /PID %%~a /F >nul 2>&1
)

REM Also handle python.exe that may be running uvicorn
for /f "tokens=2 delims=," %%a in ('tasklist /FI "IMAGENAME eq python.exe" /FO CSV /NH') do (
    REM You could extend this to read command line args if needed
    echo [INFO] Checking possible uvicorn process under python.exe with PID %%~a
    taskkill /PID %%~a /F >nul 2>&1
)
