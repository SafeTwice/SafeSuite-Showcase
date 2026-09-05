@echo off
rem become.cmd <pack-name> | -List | -Restore   (see become.ps1)
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0become.ps1" %*
