@echo off

cd /d "C:\wamp64\www\auto-push-testing"

echo Checking for file changes...

git add -A

git diff --cached --quiet
IF %ERRORLEVEL% EQU 0 (
    echo No files changed.
) ELSE (
    echo Changes detected, pushing all files...

    git commit -m "Auto backup %date% %time%"
    git push origin mark

    echo All changed files pushed successfully
)