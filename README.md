# dotfiles

Personal theme configurations for terminal tools.

## Contents

- **ghostty/** — Ghostty terminal config (Tomorrow theme)
- **starship/** — Starship prompt config (Catppuccin Mocha + Powerline)
- **ccstatusline/** — Claude Code statusline config (Dracula Powerline theme)

## Install

Run the install script to symlink configs to their expected locations:

```bash
./install.sh
```

This creates symlinks from the repo files to:
- `~/.config/ghostty/config`
- `~/.config/starship.toml`
- `~/.config/ccstatusline/settings.json`
