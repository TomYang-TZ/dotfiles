# dotfiles

Personal theme configurations for terminal tools.

## Contents

- **ghostty/** — Ghostty terminal config (Tomorrow theme)
- **starship/** — Starship prompt config (Catppuccin Mocha + Powerline)
- **ccstatusline/** — Claude Code statusline config (Dracula Powerline theme)
- **vscode/** — VS Code settings, keybindings, and extensions list (Light Modern theme)

## Install

Run the install script to symlink configs to their expected locations:

```bash
./install.sh
```

This creates symlinks from the repo files to:
- `~/.config/ghostty/config`
- `~/.config/starship.toml`
- `~/.config/ccstatusline/settings.json`
- `~/Library/Application Support/Code/User/settings.json`
- `~/Library/Application Support/Code/User/keybindings.json`

It also installs VS Code extensions from `vscode/extensions.txt` if `code` CLI is available.
