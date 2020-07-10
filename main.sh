#!/bin/bash

# DESCRIPTION
# Executes the command line interface.

# USAGE
# ./main.sh [OPTION]


# OPTIONS
process_action() {
  case $1 in
    'all')
      source scripts/system.sh
      brew bundle
      source scripts/zsh.sh
      source scripts/vscode.sh
      ;;
    'brew')
      brew bundle
      ;;
    'system')
      source scripts/system.sh
      ;;
    'zsh')
      source scripts/zsh.sh
      ;;
    'vscode')
      source scripts/vscode.sh
      ;;
    'q')
      ;;
    *)
      ;;
  esac
}

# MENU
if [[ $# == 0 ]]; then
    echo ""
    echo "******************"
    echo "    Setup OS X    "
    echo "******************"
    echo ""
    echo "Available commands:"
    echo ""
    echo "      all:  Install everything"
    echo "     brew:  Install packages & applications from Brewfile"
    echo "   system:  Install system software"
    echo "      zsh:  Install ZSH"
    echo "   vscode:  Install vscode with extensions"
    echo ""
    echo "        q:  Quit/Exit."
    echo ""
    read -p "Enter option: " response
    echo ""
    process_action $response
else
    process_action $1
fi
