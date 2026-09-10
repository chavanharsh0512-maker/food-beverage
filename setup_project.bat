@echo off
title Setting up F&B Agentic BI Hackathon Workspace
echo ========================================================
echo   Creating Project Directories and File Structure
echo ========================================================

:: 1. Create Subfolders
mkdir data
mkdir agents

:: 2. Move existing CSVs into data folder if present in current directory
if exist menu_master.csv move menu_master.csv data\ >nul
if exist inventory_log.csv move inventory_log.csv data\ >nul
if exist sales_log.csv move sales_log.csv data\ >nul

:: 3. Create Agent Python Modules
type nul > agents\__init__.py
type nul > agents\ingestion_agent.py
type nul > agents\financial_agent.py
type nul > agents\forecasting_agent.py
type nul > agents\anomaly_agent.py
type nul > agents\conversational_agent.py

:: 4. Create Core Files
type nul > orchestrator.py
type nul > app.py
type nul > README.md

:: 5. Write default requirements.txt
(
echo streamlit
echo pandas
echo numpy
echo plotly
) > requirements.txt

echo.
echo ========================================================
echo   Workspace Setup Complete! Opening VS Code...
echo ========================================================
code .

pause