# 💻 Developer Mac Setup for Front-End Developers

> A clean and efficient setup script for front-end developers on a new macOS machine.

## 🚀 Getting Started

1. Clone this repo:
   ```sh
   git clone https://github.com/volkanaltinbas/mac-setup.git
   cd mac-setup
   ```
2. Run the setup script:
   ```sh
   ./install.sh
   ```
3. Follow the prompts during installation.

---

## 🧰 Tools Installed

### 🔧 Terminal & CLI Tools
- zsh + oh-my-zsh
- iTerm2
- Warp (optional modern terminal)
  - Installed via: `brew install --cask warp`
  - A modern Rust-based terminal built for speed and developer UX (autocomplete, AI command suggestions, and rich UI).
- bat
- exa
- htop
- tree
- wget, curl

```bash
# Terminal & CLI Tools
brew install --cask iterm2
brew install --cask warp
brew install bat exa htop tree wget curl
```

### 💻 Development Environment
- Visual Studio Code
- Cursor Editor
- Rectangle (window management)

```bash
brew install --cask visual-studio-code
brew install --cask cursor
brew install --cask rectangle
```

### 🟨 Node.js & JS Tools
- nvm
- Node.js (Latest LTS)
- yarn, pnpm
- npm-check-updates
- eslint, prettier, stylelint
- typescript
- vite
- next

```bash
# Node.js & JS
brew install nvm
mkdir ~/.nvm
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh
nvm install --lts
npm install -g yarn pnpm npm-check-updates eslint prettier stylelint typescript vite create-next-app
```

### 🐳 DevOps & Container Tools
- Docker Desktop
- ngrok
- http-server

```bash
brew install --cask docker
npm install -g ngrok http-server
```

### 🧪 Testing & Utilities (manual install if needed)
- postman
- lighthouse

```bash
# Optional testing tools
# npm install -g lighthouse
# brew install --cask postman
```

> Jest, Cypress, Vitest: install manually if needed

### 📦 Package Managers & Task Runners
- Homebrew (brew)
- Mac App Store CLI (mas)
- npx, zx

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install mas
npm install -g zx
```

### ☁️ Git & Version Control
- git
- GitHub CLI (gh)

```bash
brew install git gh
```

### 🎨 Design & Asset Tools
- Figma (web)
- CleanShot or Kap
- ImageOptim

```bash
brew install --cask kap
brew install --cask imageoptim
```

### 🧠 Productivity Tools
- Raycast
- Notion
- Slack
- Discord
- Zoom

```bash
brew install --cask raycast notion slack discord zoom
```

---

## 📄 Notes
- All tools are installed via Homebrew, nvm, and shell scripts.
- Script is fully editable, feel free to comment out what you don't need.
- This setup aims to be **minimal**, **efficient**, and **clean**.

---

## 🙋‍♂️ Author
**Volkan Altınbaş**

- [LinkedIn](https://www.linkedin.com/in/volkanaltinbas/)
- [GitHub](https://github.com/valtinbas)

---

Enjoy your new Mac! 🍏✨
