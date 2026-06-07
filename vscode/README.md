## VS Code
Build the extension package from the `vscode/` directory:

```sh
cd vscode
npm run package
```

Then install the generated `.vsix`:

```sh
npm run install-extension
```

Activate via `Cmd+K Cmd+T` (macOS) or `Ctrl+K Ctrl+T` (Windows/Linux) and
pick **Hearthstone**. Reload the window if the theme doesn't appear immediately.