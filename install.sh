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

echo "Done!"
