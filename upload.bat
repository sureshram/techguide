@echo off
@if "%1" == "" goto usage

git add .
git commit -m "%1"
git pull techguide master
git push techguide master
echo "Upload completed"
goto:eof

:usage
@echo "Upload <comments>"
goto:eof