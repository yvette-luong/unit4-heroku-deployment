# Blue Planet Extension Pack

An extensions for development on the Blue Planet Platform

## Extensions Included

- [Blue Planet](https://marketplace.visualstudio.com/publishers/blueplanet-ciena) - Linting, Validation, Snippets, & Commands for Blue Planet & TOSCA Lite
- [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python) - Linting, Debugging (multi-threaded, remote), Intellisense, code formatting, refactoring, unit tests, snippets, and more.
- [Visual Studio IntelliCode](https://marketplace.visualstudio.com/items?itemName=VisualStudioExptTeam.vscodeintellicode) - AI-assisted development
- [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint) - Markdown linting and style checking for Visual Studio Code
- [Better Jinja](https://marketplace.visualstudio.com/items?itemName=samuelcolvin.jinjahtml) - Syntax highlighting for jinja(2) including HTML, Markdown, YAML, Ruby and LaTeX templates
- [YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml) - YAML Language Support by Red Hat, with built-in Kubernetes and Kedge syntax support
- [TextFSM Template Syntax](https://marketplace.visualstudio.com/items?itemName=AndyTruett.TextFSM-Syntax) - Syntax highlighting for TextFSM templates

## Other Reccomended Extensions

- [Remode Development Extension Pack](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) - Remote SSH & Container Development
- [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker) - Docker for Visual Studio Code
- [vscode-icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons) - Icons for Visual Studio Code

## Manual Packaging

1. Install NPM Packages (`vsce`)
   `npm i`

2. Package the Extension Pack
   `npx vsce package --baseContentUrl=https://git.blueplanet.com/BluePlanet/DevTools/bp-extension-pack/blob/master/`

## Contributing

Think an extension should be added or removed? Open a [Merge Request](https://git.blueplanet.com/BluePlanet/DevTools/bp-extension-pack/merge_requests/new) and we'll take a look!

- [Blue Planet Git Workflow](https://git.blueplanet.com/BluePlanet/wiki/wikis/BP-Git-Workflow)

**Enjoy!**
