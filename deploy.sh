#!/bin/bash

echo "========================================="
echo "  GitHub Pages Deployment Script"
echo "========================================="
echo ""

# Check if Git is installed
if ! command -v git &> /dev/null; then
    echo "ERROR: Git is not installed!"
    echo "Please install Git from: https://git-scm.com"
    read -p "Press Enter to exit..."
    exit 1
fi

# Get user input
echo "This script will help you deploy your portfolio to GitHub Pages."
echo ""
read -p "Enter your GitHub username: " GITHUB_USERNAME
read -p "Enter your GitHub email: " GITHUB_EMAIL

# Set repository name
REPO_NAME="${GITHUB_USERNAME}.github.io"

echo ""
echo "========================================="
echo "  Configuration Summary"
echo "========================================="
echo "GitHub Username: $GITHUB_USERNAME"
echo "GitHub Email: $GITHUB_EMAIL"
echo "Repository: $REPO_NAME"
echo ""

read -p "Continue with these settings? (Y/N): " CONFIRM
if [[ ! "$CONFIRM" =~ ^[Yy]$ ]]; then
    echo "Deployment cancelled."
    exit 0
fi

# Get script directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR"

# Initialize Git if not already initialized
if [ ! -d ".git" ]; then
    echo ""
    echo "[1/5] Initializing Git repository..."
    git init
    git config user.name "$GITHUB_USERNAME"
    git config user.email "$GITHUB_EMAIL"
    echo "Done."
else
    echo ""
    echo "[1/5] Git repository already initialized, skipping..."
fi

# Add all files
echo ""
echo "[2/5] Adding files to Git..."
git add .

# Check if there are changes to commit
if git diff --staged --quiet; then
    echo "No new changes to commit."
else
    echo ""
    echo "[3/5] Committing changes..."
    git commit -m "Initial commit - Personal portfolio website"
fi

# Set up remote
echo ""
echo "[4/5] Setting up remote repository..."
git remote remove origin >/dev/null 2>&1
git remote add origin "https://github.com/${GITHUB_USERNAME}/${REPO_NAME}.git"

# Display final instructions
echo ""
echo "========================================="
echo "  Deployment Instructions"
echo "========================================="
echo ""
echo "1. If this is your FIRST time pushing to GitHub:"
echo "   - Go to: https://github.com/new"
echo "   - Create a new repository named: $REPO_NAME"
echo "   - Select PUBLIC"
echo "   - DO NOT initialize with README"
echo ""
echo "2. Then come back here and run:"
echo "   git push -u origin main"
echo ""
echo "3. Enable GitHub Pages:"
echo "   - Go to your repository Settings"
echo "   - Scroll to GitHub Pages section"
echo "   - Source: Deploy from a branch"
echo "   - Branch: main / (root)"
echo ""
echo "4. Wait 2-5 minutes, then access:"
echo "   https://$GITHUB_USERNAME.github.io"
echo ""
echo "========================================="
echo ""

read -p "Press Enter to exit..."
