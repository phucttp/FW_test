@echo off
                        title AUTO PUSH FIRMWARE TO GIT
                        color 0A
                        echo ==========================================
                        echo      DANG DAY CODE LEN GITHUB...
                        echo ==========================================
                        echo Repo: https://github.com/PPhucNAME/hehe.git
                        echo.
                        cd /d "C:\Users\DELL\workspace\ESP32\toolAddFirmware\_release_for_git"
                        if not exist .git (
                            echo [Init Git]...
                            git init
                            git branch -M main
                        )
                        echo [Add Files]...
                        git add -A
                        echo [Commit]...
                        git commit -m "Auto update via FlashPorter Tool"
                        echo [Remote Config]...
                        git remote remove origin >nul 2>&1
                        git remote add origin https://github.com/PPhucNAME/hehe.git
                        echo [Pushing]...
                        echo (Neu la lan dau, Windows se hien popup dang nhap)
                        git push -u origin main --force
                        echo.
                        echo HOAN TAT!
                        pause
                        