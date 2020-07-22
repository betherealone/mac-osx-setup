#!/bin/bash

# DESCRIPTION
# Installs VS Code with extensions.

## Add multiple plugins here
plugins=(
    terraform
    helm
    vault
    kops
    kubectl
    consul
)

if ! command -v brew > /dev/null; then
    echo "[ASDF] Install Homebrew"
    ruby -e "$(curl --location --fail --silent --show-error https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "[ASDF] Update Homebrew"
    brew update
fi
echo ""

echo "[ASDF] Install Dependencies and asdf"
brew install coreutils curl git asdf
echo ""

echo "[ASDF] Updating bash profile and completions"
echo -e "\n. $(brew --prefix asdf)/asdf.sh" >> ~/.bash_profile
echo -e "\n. $(brew --prefix asdf)/etc/bash_completion.d/asdf.bash" >> ~/.bash_profile
echo ""

echo "[ASDF] Install plugins"
for i in "${plugins[@]}"; do
    asdf plugin-add $i;
    asdf install $i latest;
done
echo ""