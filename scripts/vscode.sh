#!/bin/bash

# DESCRIPTION
# Installs VS Code with extensions.

if ! command -v brew > /dev/null; then
    echo "[VSCODE] Install Homebrew"
    ruby -e "$(curl --location --fail --silent --show-error https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "[VSCODE] Update Homebrew"
    brew update
fi
echo ""

echo "[VSCODE] Install Homebrew Cask"
brew tap homebrew/cask
echo ""

if ! command -v code > /dev/null; then
    echo "[VSCODE] Install Visual Studio"
    brew cask install visual-studio-code
    sudo ln -sf /usr/local/bin/code /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code
else
    echo "[VSCODE] Update VS Code"
    brew cask upgrade visual-studio-code
fi
echo ""

echo "[VSCODE] Install VSCode Extensions"
code --install-extension ./vscode-extensions.vsix
echo ""