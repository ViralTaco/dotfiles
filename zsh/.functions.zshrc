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

#function dir() {
#  ls -alhGF --color=always | less -R -X -F
#}

function dir() {
  command gdir -w $COLUMNS -ACgs --color --hyperlink
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

function lz() {
  pillz "$@" && command clear
}

function repeating() {
  local count=$(( $2 + 0 ))
  if (( $count < 1 )) || (( $count > 100 )); then 
    $count=1
  fi
  command awk -v count="$count" -v txt="$1" 'BEGIN {
    while (z++ < count) printf txt
  }'
  
  return 0
}

function mnap() {
  repeating '—' COLUMNS; endl
  command date
  repeating '—' COLUMNS; endl
  
  command sudo nmap -Pn -p 1-65535 -sV -sS -T4 "$@" 
  
  repeating '—' COLUMNS; endl
}
