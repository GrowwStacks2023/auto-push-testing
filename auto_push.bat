@echo off

cd /d "C:\wamp64\www\auto-push-testing"

echo Running Git automation >> C:\wamp64\www\auto-push-testing\gitlog.txt

git add -A >> gitlog.txt 2>&1
git diff --cached --quiet

IF %ERRORLEVEL% EQU 0 (
    echo No changes found >> gitlog.txt
) ELSE (
    echo Changes detected >> gitlog.txt
    git commit -m "Auto commit %date% %time%" >> gitlog.txt 2>&1
    git push origin mark >> gitlog.txt 2>&1
)

echo Script finished >> gitlog.txt