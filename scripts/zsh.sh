#!/bin/bash

if ! command -v brew > /dev/null; then
    echo "[ZSH] Install Homebrew"
    ruby -e "$(curl --location --fail --silent --show-error https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "[ZSH] Update Homebrew"
    brew update
fi
echo ""

echo "[ZSH] Install ZSH"
brew install zsh
echo ""


echo "[ZSH] Installing ZSH tools"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo ""

echo "[ZSH] Installing default zshrc"
read -p "Do you wish to install default zshrc config ? y/n " yn
    case $yn in
        [Yy]* ) cp ~/.zshrc ~/.zshrc-backup-file; cp ./default-zshrc ~/.zshrc;;
        [Nn]* ) echo "";;
        * ) echo "Please answer yes or no.";;
    esac
echo ""
