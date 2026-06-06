@echo off
setlocal enabledelayedexpansion

echo ============================================================
echo   Kite Programming Language v1.0.0
echo   Installation Script
echo ============================================================
echo.

set "INSTALL_DIR=%USERPROFILE%\.kite"

echo Installing to: %INSTALL_DIR%
echo.

if not exist "%INSTALL_DIR%" mkdir "%INSTALL_DIR%"

echo [1/5] Installing Kite executable...
copy /Y "%~dp0kite.exe" "%INSTALL_DIR%\kite.exe" >nul
if errorlevel 1 (
    echo Installation failed
    pause
    exit /b 1
)
echo Done

echo [2/5] Installing icon...
copy /Y "%~dp0kite_icon.ico" "%INSTALL_DIR%\kite_icon.ico" >nul
echo Done

echo [3/5] Installing standard library...
if not exist "%INSTALL_DIR%\stdlib" mkdir "%INSTALL_DIR%\stdlib"
xcopy /Y /Q /E "%~dp0stdlib\*.*" "%INSTALL_DIR%\stdlib\" >nul
echo Done

echo [4/5] Installing examples...
if not exist "%INSTALL_DIR%\examples" mkdir "%INSTALL_DIR%\examples"
xcopy /Y /Q /E "%~dp0examples\*.*" "%INSTALL_DIR%\examples\" >nul
echo Done

echo [5/5] Installing documentation...
copy /Y "%~dp0README.md" "%INSTALL_DIR%\README.md" >nul 2>&1
copy /Y "%~dp0LANGUAGE_REFERENCE.md" "%INSTALL_DIR%\LANGUAGE_REFERENCE.md" >nul 2>&1
copy /Y "%~dp0INSTALLATION.md" "%INSTALL_DIR%\INSTALLATION.md" >nul 2>&1
echo Done

echo.
echo Adding to PATH...
echo %PATH% | find /I "%INSTALL_DIR%" >nul
if errorlevel 1 (
    setx PATH "%PATH%;%INSTALL_DIR%" >nul
    if errorlevel 1 (
        echo Could not add to PATH automatically
        echo Please add manually: %INSTALL_DIR%
    ) else (
        echo Done
    )
) else (
    echo Already in PATH
)

echo.
echo ============================================================
echo   Installation Complete
echo ============================================================
echo.
echo Installation directory: %INSTALL_DIR%
echo.
echo Close and reopen your terminal, then run:
echo   kite run examples\01_hello_world.kite
echo   kite repl
echo.
echo Documentation: %INSTALL_DIR%\README.md
echo.
pause
