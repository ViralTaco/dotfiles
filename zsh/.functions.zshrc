###############################################################################
#                ______                _   _                                  #
#               |  ____|              | | (_)                                 #
#               | |__ _   _ _ __   ___| |_ _  ___  _ __  ___                  #
#               |  __| | | | '_ \ / __| __| |/ _ \| '_ \/ __|                 #
#               | |  | |_| | | | | (__| |_| | (_) | | | \__ \                 #
#               |_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/                 #
#                                                                             #
###############################################################################


endl() {
  printf "\n"
}

export COLUMNS
ls() {
  endl; command exa -lh --group-directories-first --time-style=iso "$@"; endl 
}

cd() {
  builtin cd "$@"; ls
}

# clang format
cform() {
  clang-format -style=Google -i "$@"
}

dir() {
  command gdir -w $COLUMNS -ACgs --color --hyperlink
}

#dir() {
#  ls -alhGF --color=always | less -R -X -F
#}

disk_space() {
  command df -am | less -R -X -F
}

lz() {
  pillz "$@" && command clear
}

mnap() {
  repeating '—' COLUMNS; endl
  command date
  repeating '—' COLUMNS; endl
  
  command sudo nmap -Pn -p 1-65535 -sV -sS -T4 "$@" 
  
  repeating '—' COLUMNS; endl
}

repeating() {
  local count=$(( $2 + 0 ))
  if (( $count < 1 )) || (( $count > 100 )); then 
    $count=1
  fi
  command awk -v count="$count" -v txt="$1" 'BEGIN {
    while (z++ < count) printf txt
  }'
  
  return 0
}

# This command is so supidly awkward that, yes, I need a function for it.
# I know an alias would have worked. I don't care. Fuck you, Oracle.
mysql_start() {
  command mysql.server start
}