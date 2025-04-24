@echo off
REM ✅ Start Uvicorn Server (⚠️ don't use `start ""` here)

REM Activate the Conda environment
call C:\Mudassir_LambdaTheta\MLOps\actions\Scripts\activate

REM Start the Uvicorn server
uvicorn main:app --port 8000