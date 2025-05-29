#!/bin/bash

# install-dotfiles.sh — Set up symlinks for personalized dotfiles

set -e

echo "🔗 Setting up dotfiles..."

DOTFILES_DIR="$HOME/dotfiles"
BACKUP_DIR="$HOME/dotfiles_backup_$(date +%Y%m%d_%H%M%S)"
FILES=(.zshrc .gitconfig .gitignore .editorconfig)

mkdir -p "$BACKUP_DIR"

for file in "${FILES[@]}"; do
  if [ -e "$HOME/$file" ] || [ -L "$HOME/$file" ]; then
    echo "📦 Backing up existing $file to $BACKUP_DIR"
    mv "$HOME/$file" "$BACKUP_DIR/"
  fi

  echo "🔗 Linking $DOTFILES_DIR/$file → $HOME/$file"
  ln -s "$DOTFILES_DIR/$file" "$HOME/$file"
done

echo "✅ Dotfiles setup complete!"

# Source new .zshrc immediately if running Zsh
if [ "$SHELL" = "/bin/zsh" ]; then
  echo "🔄 Reloading Zsh config..."
  source ~/.zshrc
fi
