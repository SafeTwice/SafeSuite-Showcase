@echo off
rem ============================================================================
rem  SafeSuite-Showcase test bench reset
rem  Restores C:\Demo\SafeSuite-Showcase to the pristine state of the GitHub
rem  repository (origin/main), recreates the external linked document, and
rem  clears local backups. Close SafeSuite before running.
rem ============================================================================
setlocal
set ROOT=C:\Demo\SafeSuite-Showcase
set EXTERNAL=C:\Demo\Showcase-External

rem cmd.exe reads batch files incrementally, and this script lives INSIDE the folder
rem being reset - git rewriting reset.cmd mid-run would corrupt execution. Re-exec a
rem copy from %TEMP% first.
if /i not "%~dp0"=="%TEMP%\" (
    copy /y "%~f0" "%TEMP%\showcase-reset.cmd" >nul
    call "%TEMP%\showcase-reset.cmd"
    exit /b %errorlevel%
)

echo.
echo === SafeSuite-Showcase reset ===
echo This discards ALL local changes in %ROOT% and restores origin/main.
choice /M "Continue"
if errorlevel 2 exit /b 1

if not exist "%ROOT%\.git" (
    echo No working copy found - cloning fresh from GitHub...
    git clone https://github.com/SafeTwice/SafeSuite-Showcase.git "%ROOT%" || goto :fail
) else (
    pushd "%ROOT%"
    git fetch origin            || goto :fail
    git reset --hard origin/main || goto :fail
    git clean -fdx --exclude=.ai-backups || goto :fail
    rem the pristine state includes no backups either:
    if exist ".ai-backups" rmdir /s /q ".ai-backups"
    popd
)

rem ---- external linked document (hard link: same volume, no admin needed) ----
if not exist "%EXTERNAL%" mkdir "%EXTERNAL%"
if not exist "%EXTERNAL%\SharedTestBenchSpec.md" (
    copy /y "%ROOT%\9_Extras\Linked_SharedTestBenchSpec.md" "%EXTERNAL%\SharedTestBenchSpec.md" >nul
)
del /f /q "%ROOT%\9_Extras\Linked_SharedTestBenchSpec.md" >nul 2>&1
mklink /H "%ROOT%\9_Extras\Linked_SharedTestBenchSpec.md" "%EXTERNAL%\SharedTestBenchSpec.md" >nul || goto :fail
rem For a network-document flavour instead, replace the mklink /H line with e.g.:
rem   mklink "%ROOT%\9_Extras\Linked_SharedTestBenchSpec.md" "\\nas\specs\SharedTestBenchSpec.md"
rem (directory symlinks to UNC paths need Developer Mode or an elevated prompt)

echo.
echo Reset complete. Open %ROOT%\Model.ssproject in SafeSuite.
exit /b 0

:fail
echo.
echo RESET FAILED - see the message above.
exit /b 1
