###############################################################################
#                ______                _   _                                  #
#               |  ____|              | | (_)                                 #
#               | |__ _   _ _ __   ___| |_ _  ___  _ __  ___                  #
#               |  __| | | | '_ \ / __| __| |/ _ \| '_ \/ __|                 #
#               | |  | |_| | | | | (__| |_| | (_) | | | \__ \                 #
#               |_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/                 #
#                                                                             #
###############################################################################

alias path='echo -e ${PATH//:/\\n}'

function endl() {
  printf "\n"
}

export COLUMNS
function ls() {
  endl; command exa -lh --group-directories-first --time-style=iso "$@"; endl 
}

function dir() {
  ls -alhGF --color=always | less -R -X -F
}

function disk_space() {
  command df -am | less -R -X -F
}

function cd() {
  builtin cd "$@"; ls
}

# clang format
function cform() {
  clang-format -style=Google -i "$@"
}

