@echo off
setlocal enabledelayedexpansion
title BACSE350 Course Materials - VS Code Viewer Setup

echo =====================================================================
echo           BACSE350 Blockchain Course Materials Viewer Setup
echo =====================================================================
echo.
echo Checking for Visual Studio Code installation...

:: Check if 'code' CLI is in PATH
where code >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    set "CODE_CMD=code"
    goto :VSCodeInstalled
)

:: Check standard user/system install locations if not in PATH
if exist "%LOCALAPPDATA%\Programs\Microsoft VS Code\bin\code.cmd" (
    set "CODE_CMD=%LOCALAPPDATA%\Programs\Microsoft VS Code\bin\code.cmd"
    goto :VSCodeInstalled
)
if exist "%ProgramFiles%\Microsoft VS Code\bin\code.cmd" (
    set "CODE_CMD=%ProgramFiles%\Microsoft VS Code\bin\code.cmd"
    goto :VSCodeInstalled
)
if exist "%ProgramFiles(x86)%\Microsoft VS Code\bin\code.cmd" (
    set "CODE_CMD=%ProgramFiles(x86)%\Microsoft VS Code\bin\code.cmd"
    goto :VSCodeInstalled
)

:: VS Code is not installed. Attempt automated installation.
echo.
echo [!] Visual Studio Code was not found on this system.
echo [*] Downloading and installing Visual Studio Code...
echo.

:: Try winget first if available
where winget >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    echo [*] Installing via Windows Package Manager (winget)...
    winget install Microsoft.VisualStudioCode --silent --accept-package-agreements --accept-source-agreements
    if %ERRORLEVEL% EQU 0 goto :FindCodeAfterInstall
)

:: Fallback: Download official installer using PowerShell
echo [*] Downloading official VS Code 64-bit User Installer...
set "TEMP_INSTALLER=%TEMP%\VSCodeUserSetup-x64.exe"
powershell -Command "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; (New-Object System.Net.WebClient).DownloadFile('https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user', '%TEMP_INSTALLER%')"

if exist "%TEMP_INSTALLER%" (
    echo [*] Installing VS Code silently...
    "%TEMP_INSTALLER%" /verysilent /mergetasks="!runcode,addcontextmenufiles,addcontextmenufolders,associatewithfiles,addtopath"
    del /f /q "%TEMP_INSTALLER%" >nul 2>&1
) else (
    echo.
    echo [ERROR] Failed to download VS Code automatically.
    echo Please download and install VS Code manually from: https://code.visualstudio.com/
    pause
    exit /b 1
)

:FindCodeAfterInstall
:: Refresh local PATH check
if exist "%LOCALAPPDATA%\Programs\Microsoft VS Code\bin\code.cmd" (
    set "CODE_CMD=%LOCALAPPDATA%\Programs\Microsoft VS Code\bin\code.cmd"
    goto :VSCodeInstalled
)
if exist "%ProgramFiles%\Microsoft VS Code\bin\code.cmd" (
    set "CODE_CMD=%ProgramFiles%\Microsoft VS Code\bin\code.cmd"
    goto :VSCodeInstalled
)
where code >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    set "CODE_CMD=code"
    goto :VSCodeInstalled
)

echo [!] VS Code installed successfully. Please restart your terminal to use the 'code' command.
pause
exit /b 0

:VSCodeInstalled
echo [+] Visual Studio Code is detected.
echo.
echo [*] Installing recommended extensions for optimal Markdown, Mermaid, and LaTeX rendering...
echo.

:: Extension 1: Mermaid support in Markdown Preview
echo [*] Installing Markdown Preview Mermaid Support (bierner.markdown-mermaid)...
call "%CODE_CMD%" --install-extension bierner.markdown-mermaid --force

:: Extension 2: LaTeX math support in Markdown Preview
echo [*] Installing Markdown+Math (goessner.mdmath)...
call "%CODE_CMD%" --install-extension goessner.mdmath --force

:: Extension 3: Enhanced GitHub styling for Markdown Preview
echo [*] Installing GitHub Markdown Preview (bierner.github-markdown-preview)...
call "%CODE_CMD%" --install-extension bierner.github-markdown-preview --force

echo.
echo =====================================================================
echo [+] Setup complete! All extensions are installed.
echo [*] Opening course materials in Visual Studio Code...
echo =====================================================================
echo.
echo TIP: Inside VS Code:
echo      Press Ctrl + Shift + V  to open full Markdown Preview
echo      Press Ctrl + K, then V  to open Markdown Preview to the side
echo.

:: Open current folder and open the Master Study Guide
call "%CODE_CMD%" "%~dp0."
call "%CODE_CMD%" "%~dp0BACSE350 Blockchain Master Study Guide.md"

timeout /t 5 >nul
exit /b 0
