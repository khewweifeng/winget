@echo off
winget update
winget update --all | clip
cmd /k