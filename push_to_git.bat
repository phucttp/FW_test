@echo off
title Push Firmware to Git
color 0A
echo ==========================================
echo      PUSHING FIRMWARE TO GIT
echo ==========================================
echo Repo: https://phucttp@github.com/phucttp/FW_test.git
echo.
cd /d "c:\Users\DELL\workspace\IDF\ESP_MUL\Muti\toolAddFirmware\_release_for_git"

if not exist .git (
    echo [Init Git]...
    git init
    git branch -M main
)

echo [Add Files]...
git add -A

echo [Commit]...
git commit -m "Update firmware via FlashPorter"

echo [Remote Config]...
git remote remove origin >nul 2>&1
git remote add origin https://phucttp@github.com/phucttp/FW_test.git

echo [Pushing]... (force push like original FlashPorter)
git push -u origin main --force

echo.
echo DONE!
pause
