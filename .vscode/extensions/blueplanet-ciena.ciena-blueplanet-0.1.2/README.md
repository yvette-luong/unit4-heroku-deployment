# Blue Planet Extension for Visual Studio Code

Also check out the [Blue Planet Extension Pack](https://marketplace.visualstudio.com/items?itemName=blueplanet-ciena.blueplanet-extension-pack)!

## Features

The Blue Planet Extension for Visual Studio Code provides language support and snippets for Blue Planet's TOSCA Lite DSL, DDUI Schema II & Commands for interating with remote BP Servers

<details open>
<summary>Validation And Code Suggestions</summary>

![Screenshot](https://developer.blueplanet.com/assets/vscode/extension/docs/imgs/ValidationAndSuggestion.gif)

</details>

<details>
<summary>TOSCA Lite Snippets</summary>

![Screenshot](https://developer.blueplanet.com/assets/vscode/extension/docs/imgs/TOSCASnippets.gif)

</details>

<details>
<summary>DDUI Schema II Snippets</summary>

![Screenshot](https://developer.blueplanet.com/assets/vscode/extension/docs/imgs/DDUISnippet.gif)

</details>

<details>
<summary>Preview TOSCA as UML (BETA)</summary>

You can now `right-click` any `.tosca` file and "Preview TOSCA UML" will build a PlantUML class diagram of the ResourceTypes.
If the [PlantUML Extension](https://marketplace.visualstudio.com/items?itemName=jebbs.plantuml) is installed and configured this will also open a preview window.

```json
"plantuml.server": "https://www.plantuml.com/plantuml",
"plantuml.render": "PlantUMLServer"
```

</details>

## Settings

For a complete listing of settings provided for the Blue Planet Extension see the "Contributions" page for this extension

### Configure Connection to BP Server

The best way to add a Blue Planet Server is to use the "Blue Planet: Add a BP Server" command from the command pallet. (<kbd>⇧</kbd>,<kbd>⌘</kbd>+<kbd>P</kbd> / <kbd>Ctrl</kbd>,<kbd>Shift</kbd>+<kbd>P</kbd>)  
However you can also do so manually in the `settings.json`

```json
"bp.servers": {
	"Blue Planet Evaluation Edition" : {
		"name": "Blue Planet Evaluation Edition",
		"ip": "192.168.33.10",
		"username": "admin",
		"password": "adminpw",
		"areas": {}
	}
}
```

### Language Server Settings

- `bp.languageServerBPTosca.maxNumberOfProblems`: Controls the maximum number of problems produced by the Blue Planet Tosca Lite language server
- `bp.languageServerBPTosca.bpSchemaVersion`: The version of BPOcore to validate TOSCA against (eg 3.1.1)

## Available Commands

For a complete listing of commands provided for the Blue Planet Extension see the "Contributions" page for this extension

| Name | Description | Keyboard Shortcuts | Menu Contexts |
|------|-------------|--------------------|---------------|
| Add a BP server | Add a Blue Planet server configuration to the settings |
| Create Pull Request | Create a Pull Request to the Blue Planet server |
| Push SSH Key | Push a SSH Key to the Blue Planet server |
| Clone Model Definitions | Clone remote Blue Planet model definitions |

### Known Issues

The Blue Planet onboarding commands are still a work in progress. They currently rely on the remote model-definitions to be cloned and opened in multi-workspace environment. Then the onboard just does a copy of the projecct model-defs to the server model defs which then need to be manually pushed to the server

## Contributing & Development

We welcome contributions! If you are interested in contributing please email [devexchange@blueplanet.com](https://developer.blueplanet.com/assets/vscode/extension/devexchange@blueplanet.com)

If you are new to VSCode Extension development review the [VSC Extension Quickstart](https://developer.blueplanet.com/assets/vscode/extension/docs/vsc-extension-quickstart.md) and the [BP Git Workflow & Contribution Guidelines](https://git.blueplanet.com/BluePlanet/wiki/wikis/BP-Git-Workflow)

1. Install `npm i`
2. Open Debug Pannel and Run "Client + Server"

- [BP Git Workflow & Contribution Guidelines](https://git.blueplanet.com/BluePlanet/wiki/wikis/BP-Git-Workflow)
- [VSCode Extension Quickstart](https://developer.blueplanet.com/assets/vscode/extension/./docs/vsc-extension-quickstart.md)
- [Extension Documentation](https://code.visualstudio.com/api)

### Development Notes

- The language server logs to the "BP tosca" item in the dropdown in the output window

### Manual Packaging

1. Install `vsce` (should be already done with `npm i`)
2. run `npx vsce package --baseContentUrl=https://git.blueplanet.com/BluePlanet/DevTools/bp-vscode-extension/blob/master/`

### Manual Install

1. Open Extension sidebar
2. Select the three dots in the top right of the sidebar
3. Select Install from VSIX...

<details>
<summary>Screenshot</summary>

![Screenshot](https://developer.blueplanet.com/assets/vscode/extension/docs/imgs/ManualInstall.gif)

</details>

## Feedback

Please provide feedback in the [Blue Planet Q&A Forums ](https://my.ciena.com/CienaPortal/s/topic/0TO0z000000cKlUGAU/blue-planet-devops) on the myCiena Portal

## Release Notes

Refer to the [CHANGELOG.md](https://developer.blueplanet.com/assets/vscode/extension/CHANGELOG.md)

## License

Apache-2.0 - See [LICENSE](https://developer.blueplanet.com/assets/vscode/extension/LICENSE) for more info