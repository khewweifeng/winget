@echo off
set KEY_NAME="HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment"
set VALUE_NAME=PATH

FOR /F "usebackq skip=2 tokens=1-3" %%A IN (`REG QUERY %KEY_NAME% /v %VALUE_NAME% 2^>nul`) DO (
    set ValueName=%%A
    set ValueType=%%B    
    set ValueValue=%%C
)

if defined ValueName (
    set PATH=%ValueValue%;C:\ffmpeg
    reg add %KEY_NAME% /v %VALUE_NAME% /t REG_SZ /d "%PATH%" /f
) else (
    echo Variable does not exist.
)