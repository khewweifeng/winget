@echo off
setlocal

rem Set the directory path
set "dirPath=C:\Users\kheww\OneDrive\Pictures\Screenshots"

rem Check if the directory exists
if exist "%dirPath%" (
    rem Delete all files in the directory
    del /Q "%dirPath%\*"
    
    rem Open the folder
    start "" "%dirPath%"
)

endlocal
