## VS Code
Build the extension package from the `vscode/` directory:

```sh
cd vscode
npm run package
```

Then install the generated `.vsix`:

```sh
code --install-extension hearthstone-theme-0.1.0.vsix
```

Activate via `Cmd+K Cmd+T` (macOS) or `Ctrl+K Ctrl+T` (Windows/Linux) and
pick **Hearthstone**. Reload the window if the theme doesn't appear immediately.