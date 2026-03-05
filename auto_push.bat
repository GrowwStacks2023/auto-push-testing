@echo off

cd C:\wamp64\www\auto-push-testing

git add .

git diff --cached --quiet
if %errorlevel%==0 (
    echo No changes to commit
) else (
    git commit -m "Auto commit %date% %time%"
    git push origin main
    echo Changes pushed to GitHub
)

exit