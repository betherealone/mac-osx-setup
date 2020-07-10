# vscode extensions for productivity

vscode extensions for productivity is an extension pack including good extensions aiming to increase your productivity in Web and Cloud.

## Extensions included

- christian-kohler.path-intellisense
- CoenraadS.bracket-pair-colorizer-2
- DavidAnson.vscode-markdownlint
- eamodio.gitlens
- esbenp.prettier-vscode
- formulahendry.code-runner
- Gruntfuggly.todo-tree
- hashicorp.terraform
- johnpapa.vscode-peacock
- ms-azuretools.vscode-docker
- ms-kubernetes-tools.vscode-kubernetes-tools
- ms-python.python
- ms-vscode-remote.remote-ssh
- ms-vscode-remote.remote-ssh-edit
- pnp.polacode
- redhat.vscode-yaml
- streetsidesoftware.code-spell-checker
- VisualStudioExptTeam.vscodeintellicode
- vscode-icons-team.vscode-icons

## How to generate VSIX File

Register as a publisher in [Microsoft account](https://account.microsoft.com/account?lang=en-us) and have a publisher profile on the management page for the [VS Code marketplace](https://marketplace.visualstudio.com/manage).

Install Visual Studio Code Extensions: 
`npm install -g vsce`

Update the `package.json` file with your Publisher details and run 
`vsce package`

This will provide you the VSIX file for installing the credentials using command
`code --install-extension vscode-extensions.vsix`

## Add more extensions

Update Package Json file to Add new extensions.

## Overrite base vscode-extensions file

If the default vscode-extensions file is missing your extensions or contains something not useful, please update the `package.json` file
and run `vsce package` to get new vsix file.

