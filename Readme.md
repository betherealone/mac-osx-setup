# Mac OS X Setup

## Purpose

This repository aims to provide an automated way of installing system softwares like ZSH, VS Code, Brew on a fresh MacOS machine.
Enabling developers and users to quickly install and have a automated script to install tools is the aim of the repo.

## How To Use

Being simplistic in design, one can easily  install software by running -
`bash main.sh`

this will prompt user with various installations like ZSH, Brew , VS Code etc.

## Softwares and Programs currently supported

1. Installation of Homebrew with cask and bunlde repos.
2. Installation of Various softwares using brew bundle found at brew https://formulae.brew.sh/formula/  and brew at cask https://formulae.brew.sh/cask/.
    Multiple repositories can be added by updating `scripts/system.sh` file.
3. Installing ZSH with base ZSH Config.
4. Installing Visual Studio Code with hightest recommend extensions.

## Suggestions and Contribution

Please feel free to raise any issue or request if you feel something is not implemented properly.

## TODO
- Next Steps planned for this repository can be found in the `TODO` file.