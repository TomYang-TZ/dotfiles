#!/bin/bash
set -e

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

link() {
  local src="$1" dst="$2"
  mkdir -p "$(dirname "$dst")"
  if [ -L "$dst" ]; then
    rm "$dst"
  elif [ -e "$dst" ]; then
    echo "Backing up existing $dst to $dst.bak"
    mv "$dst" "$dst.bak"
  fi
  ln -s "$src" "$dst"
  echo "Linked $dst -> $src"
}

link "$DOTFILES/ghostty/config"          "$HOME/.config/ghostty/config"
link "$DOTFILES/starship/starship.toml"  "$HOME/.config/starship.toml"
link "$DOTFILES/ccstatusline/settings.json" "$HOME/.config/ccstatusline/settings.json"

VSCODE_DIR="$HOME/Library/Application Support/Code/User"
link "$DOTFILES/vscode/settings.json"    "$VSCODE_DIR/settings.json"
link "$DOTFILES/vscode/keybindings.json" "$VSCODE_DIR/keybindings.json"

# Install VS Code extensions
if command -v code &> /dev/null; then
  echo "Installing VS Code extensions..."
  while read -r ext; do
    code --install-extension "$ext" --force 2>/dev/null || true
  done < "$DOTFILES/vscode/extensions.txt"
fi

echo "Done!"
