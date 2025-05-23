# My Mac Developer Setup

Minimalist ve taşınabilir bir geliştirici ortamı oluşturmak için gereken tüm araçlar, eklentiler ve konfigürasyonlar bu repoda yer alır.

## İçerik

### 1. Kurulum Scripti: `setup-dev-env.sh`
Mac'inizi temel geliştirme ortamı olarak hazırlar. Kurulumları içerir:
- Homebrew
- Git, Zsh, NVM gibi temel araçlar
- iTerm2, VSCode, Cursor, Docker Desktop
- Postman, Raycast, Rectangle gibi verimlilik araçları

### 2. Terminal Ortamı
Zsh yapılandırmaları ve eklentileri:
- Powerlevel10k teması
- ZSH Autosuggestions
- ZSH Syntax Highlighting

### 3. VSCode Eklenti Listesi: `vscode-extensions.txt`
En sık kullanılan front-end ve back-end geliştirme uzantıları.

### 4. Paket Listeleri:
- `brew-packages.txt`
- `brew-casks.txt`

Kurulumlar topluca şu komutla yüklenebilir:
```bash
xargs brew install < brew-packages.txt
xargs brew install --cask < brew-casks.txt
xargs -n1 code --install-extension < vscode-extensions.txt
```

### 5. Yedekleme
Kurulumdan sonra ortamı yedeklemek için:
```bash
brew list > brew-packages.txt
brew list --cask > brew-casks.txt
code --list-extensions > vscode-extensions.txt
cp ~/.zshrc zshrc.backup
```

---

## Kullanım
1. `git clone https://github.com/kullanici-adin/my-mac-dev-setup.git`
2. `cd my-mac-dev-setup`
3. `chmod +x setup-dev-env.sh && ./setup-dev-env.sh`
4. Terminali yeniden başlat.

---

## Katkı
Faydalı bulduysan yıldızlamayı (star) unutma. PR'lara açığım!

---

**Not:** Bu yapılandırma, dikkat dağıtmayan bir ortam yaratmak ve geliştirici deneyimini sadeleştirmek üzerine odaklanmıştır. Geliştirici araçları hızlıca kurulabilir ve gerektiğinde silinebilir yapıdadır.

