#!/bin/bash

# install.sh — Main setup script

set -e

echo "🔧 Starting Mac setup..."

# Load common functions (to be added later)
# source ./utils.sh

# Ask for sudo upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until script has finished
while true; do sudo -n true; sleep 60; kill -0 "$SSH_AGENT_PID" || exit; done 2>/dev/null &

### --- Xcode CLI Tools --- ###
echo "🔧 Installing Xcode Command Line Tools..."
xcode-select --install 2>/dev/null || echo "✅ Xcode CLI Tools already installed."

### --- Homebrew --- ###
echo "🍺 Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

### --- Core CLI Tools --- ###
echo "🔧 Installing CLI tools..."
brew install bat exa htop tree wget curl git gh zx mas

### --- Terminal Tools --- ###
echo "🖥️ Installing terminal tools..."
brew install --cask iterm2
brew install --cask warp
brew install --cask rectangle

### --- Zsh & Oh My Zsh --- ###
echo "⚙️ Setting up Zsh and Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

### --- Node.js + JS Tooling --- ###
echo "🟨 Installing Node.js and JS tools..."
brew install nvm
mkdir -p ~/.nvm
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh
nvm install --lts
npm install -g yarn pnpm npm-check-updates eslint prettier stylelint typescript vite create-next-app

### --- Editors --- ###
echo "🧠 Installing editors..."
brew install --cask visual-studio-code
brew install --cask cursor

### --- Docker & Web Dev Tools --- ###
echo "🐳 Installing Docker and web tools..."
brew install --cask docker
npm install -g ngrok http-server

### --- Design & Productivity --- ###
echo "🎨 Installing design and productivity tools..."
brew install --cask kap
brew install --cask imageoptim
brew install --cask raycast notion slack discord zoom

### --- Cleanup --- ###
echo "🧹 Cleaning up..."
brew cleanup

echo "✅ Setup complete! Enjoy your Mac, developer! 🍏"
