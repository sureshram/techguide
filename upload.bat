@echo off

set "comment=%~1"

@if "%comment%" == "" goto usage

@echo Uploading with comments: %comment%

git add .
git commit -m "%comment%"
git pull techguide master
git push techguide master
echo "Upload completed"
goto:eof

:usage
@echo "Upload <comments>"
goto:eof