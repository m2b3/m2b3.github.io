@echo off

REM Handle the commit message
SET msg="minor change"
IF NOT [%1] == [] SET msg=%1

set "QUARTO=C:\Program Files\Quarto\bin\quarto.cmd"
set "QUARTO_DENO=C:\Program Files\Quarto\bin\tools\x86_64\deno.exe"

echo %msg%

REM Check if the second argument is "dopy"
IF [%2] == [dopy] (
    echo "Dopy mode activated"
    pushd ..\py_m2b3
    call python Generate.py
    copy members_en.qmd ..\m2b3en\members.qmd
    copy members_fr.qmd ..\fr\members.qmd
	IF [%3] == [dogit] (
	git add -A
	git commit -m %msg% 
	git push
	)
    popd

)

echo "hello"
echo "now doing quarto"

REM call "%QUARTO%" render
echo QUARTO is: "%QUARTO%"
pause
call "C:\Program Files\Quarto\bin\quarto.cmd" render
REM call quarto render

REM Check if the third argument is "dogit"
REM Also check if the second argument is "dogit" if the second is missing
IF [%3] == [dogit] (
    git add -A
    git commit -m %msg%
    git push
) ELSE IF [%2] == [dogit] (
    git add -A
    git commit -m %msg%
    git push
) ELSE (
    echo "Skipping Git operations in main directory"
)

cd ../fr
REM call "%QUARTO%" render
REM call quarto.cmd render
REM call "C:\Program Files\Quarto\bin\quarto.cmd" render
call quarto render

IF [%3] == [dogit] (
    git add -A
    git commit -m %msg%
    git push
) ELSE IF [%2] == [dogit] (
    git add -A
    git commit -m %msg%
    git push
) ELSE (
    echo "Skipping Git operations in ../fr directory"
)

cd ../m2b3en
