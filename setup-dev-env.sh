#!/bin/bash

echo "✅ Xcode Command Line Tools kuruluyor..."
xcode-select --install

echo "✅ Homebrew kuruluyor..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "✅ Homebrew güncelleniyor..."
brew update

echo "✅ Temel araçlar kuruluyor..."
brew install git
brew install nvm
brew install zsh
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask cursor
brew install --cask docker
brew install --cask postman

echo "✅ Zsh eklentileri kuruluyor..."
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
brew install romkatv/powerlevel10k/powerlevel10k

echo "✅ Yardımcı uygulamalar kuruluyor..."
brew install --cask rectangle
brew install --cask stats
brew install --cask hiddenbar
brew install --cask raycast
brew install --cask karabiner-elements

echo "✅ .zshrc ayarları yapılıyor..."
cat <<EOT >> ~/.zshrc

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"

# Zsh eklentileri
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Powerlevel10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
EOT

echo "✅ Kurulum tamamlandı. Terminali yeniden başlatın ve 'p10k configure' komutunu çalıştırarak temayı özelleştirin."


