### .zshrc ###
# Enable Oh My Zsh if installed
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Set default editor
export EDITOR="code --wait"

# Aliases
alias ll="exa -la"
alias gs="git status"
alias gp="git push"