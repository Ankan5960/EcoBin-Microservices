@echo off
setlocal enabledelayedexpansion

:: Function to update the repository
call :update_repo "EcoBin-GateWay-Service"
call :update_repo "EcoBin-Auth-Service"
call :update_repo "EcoBin-Sensor-Data-Service"
call :update_repo "EcoBin-User-Data-Service"

:: Exit script
exit /b

:update_repo
set REPO_PATH=%1
echo Updating repository at %REPO_PATH%...

:: Change directory to the repository and perform git operations
cd %REPO_PATH%
git checkout main
git pull origin main
cd ..

exit /b
