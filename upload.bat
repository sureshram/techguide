@echo off

set "comment=%~1"
set project=techguide

@if "%comment%" == "" goto usage

@echo Uploading with comments: %comment%

git add .
git commit -m "%comment%"
git pull %project% master
git push %project% master
echo "Upload completed"
goto:eof

:usage
@echo "upload "comments""
goto:eof