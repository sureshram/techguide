 DOS TIPS 
==================

#### DOS Window

Hold down shift when right clicking on a folder to see "open command prompt"

#### Create secret file from commandline

notepad testfile.txt:secrestfile.txt


#### Delete all files with File.extn under subtree

del /s H "File.extn" 


#### Read Command Line Arguments


@Rem read first argument after removing quotes
set "var1=%~1"

@Simple
set destination=%1
echo %destination%

@Conditional Check
if "%var1%" == "hello" ( echo "Hello" )

#### Arithmetic /a 
 set i=1
 set /a i=%i%+1
 echo %i%

### Replace in a file - %1 is file to search and %2 is output filename - has a bug
@echo off
setlocal EnableDelayedExpansion
for /f "tokens=*" %%a in (%1) do (
 set LineFromLog=%%a
 @echo !LineFromLog:"SYSTEMI_PATH"="D:/Software/logstash-1.4.2/logs/client*"! >> %2
)


#### String Replace

%variable:str1=str2%

#### Replace jdk with REST

echo %JAVAHOME:jdk=REST%


#### Directory Listing

List output by Date

dir /OD

Sort by Date (/OD) - Use Last Written to sort (/TW)

dir /OD /TW

Delete files

del /s/q tmp* 


#### Date Handling

Set CURRDATE=%TEMP%\CURRDATE.TMP

Set CURRTIME=%TEMP%\CURRTIME.TMP

DATE /T > %CURRDATE%

TIME /T > %CURRTIME%

Set PARSEARG="eol=; tokens=1,2,3,4* delims=/, "

For /F %PARSEARG% %%i in (%CURRDATE%) Do SET YYYYDDMM=%%l%%j%%k

Set PARSEARG="eol=; tokens=1,2,3* delims=:, "

For /F %PARSEARG% %%i in (%CURRTIME%) Do Set HHMM=%%i%%j%%k

netstat -aon > netstat%YYYYDDMM%%HHMM%


####  Wait Loops
:loop
  echo "hello"
  timeout /t 1
goto loop

