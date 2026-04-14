@echo off
echo =========================================
echo   GitHub Pages Deployment Script
echo =========================================
echo.

REM Check if Git is installed
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo ERROR: Git is not installed!
    echo Please install Git from: https://git-scm.com/download/win
    echo.
    echo After installation, run this script again.
    pause
    exit /b 1
)

REM Get user input
echo This script will help you deploy your portfolio to GitHub Pages.
echo.
set /p GITHUB_USERNAME="Enter your GitHub username: "
set /p GITHUB_EMAIL="Enter your GitHub email: "

REM Set repository name
set REPO_NAME=%GITHUB_USERNAME%.github.io

echo.
echo =========================================
echo   Configuration Summary
echo =========================================
echo GitHub Username: %GITHUB_USERNAME%
echo GitHub Email: %GITHUB_EMAIL%
echo Repository: %REPO_NAME%
echo.

set /p CONFIRM="Continue with these settings? (Y/N): "
if /i not "%CONFIRM%"=="Y" (
    echo Deployment cancelled.
    pause
    exit /b 0
)

REM Navigate to portfolio directory
cd /d "%~dp0"

REM Initialize Git if not already initialized
if not exist ".git" (
    echo.
    echo [1/5] Initializing Git repository...
    git init
    git config user.name "%GITHUB_USERNAME%"
    git config user.email "%GITHUB_EMAIL%"
    echo Done.
) else (
    echo.
    echo [1/5] Git repository already initialized, skipping...
)

REM Add all files
echo.
echo [2/5] Adding files to Git...
git add .

REM Check if there are changes to commit
git diff --staged --quiet
if %errorlevel% equ 0 (
    echo No new changes to commit.
) else (
    echo.
    echo [3/5] Committing changes...
    git commit -m "Initial commit - Personal portfolio website"
)

REM Set up remote
echo.
echo [4/5] Setting up remote repository...
git remote remove origin >nul 2>nul
git remote add origin https://github.com/%GITHUB_USERNAME%/%REPO_NAME%.git

REM Display final instructions
echo.
echo =========================================
echo   Deployment Instructions
echo =========================================
echo.
echo 1. If this is your FIRST time pushing to GitHub:
echo    - Go to: https://github.com/new
echo    - Create a new repository named: %REPO_NAME%
echo    - Select PUBLIC
echo    - DO NOT initialize with README
echo.
echo 2. Then come back here and run:
echo    git push -u origin main
echo.
echo 3. Enable GitHub Pages:
echo    - Go to your repository Settings
echo    - Scroll to GitHub Pages section
echo    - Source: Deploy from a branch
echo    - Branch: main / (root)
echo.
echo 4. Wait 2-5 minutes, then access:
echo    https://%GITHUB_USERNAME%.github.io
echo.
echo =========================================
echo.
echo To push now, make sure you created the repository
echo on GitHub first, then type: git push -u origin main
echo.

pause
