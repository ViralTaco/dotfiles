export ZSH_DISABLE_COMPFIX=true
export RC_DIR="${HOME}/Documents/dotfiles/zsh"
source "${RC_DIR}/.main.zshrc"

# OMZSH
ZSH_THEME="tacoaster"
HIST_STAMPS="yyyy-mm-dd"

plugins=(git osx brew iterm2)
source "${ZSH}/oh-my-zsh.sh"

