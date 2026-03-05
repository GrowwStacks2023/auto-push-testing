@echo off

cd /d C:\wamp64\www\auto-push-testing

echo Checking for changes...

git add .

git diff --cached --quiet
IF %ERRORLEVEL% EQU 0 (
    echo No changes to commit
) ELSE (
    git commit -m "Auto commit %date% %time%"
    git push origin mark
    echo Changes pushed to GitHub
)

pause