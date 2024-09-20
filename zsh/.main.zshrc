##					                                                                                        .main.zshrc
if [[ -z "$RC_DIR" ]]; then
  export RC_DIR="$(pwd)"
fi

source "$RC_DIR/.path.zshrc"
source "$RC_DIR/.alias.zshrc"
source "$RC_DIR/.functions.zshrc"

preexec() {
  command clear
}

if [[ -e "${HOME}/.iterm2_shell_integration.bash" ]]; then
  source "${HOME}/.iterm2_shell_integration.bash"
fi
