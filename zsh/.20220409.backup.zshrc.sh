###############################################################################
#                                   _ _                                       #
#                             /\   | (_)                                      #
#                            /  \  | |_  __ _ ___                             #
#                           / /\ \ | | |/ _` / __|                            #
#                          / ____ \| | | (_| \__ \                            #
#                         /_/    \_|_|_|\__,_|___/                            #
#                                                                             #
###############################################################################
# clear don't clear scrollback
alias clear='clear -x'
# ls -a
alias lsa="ls -a"
# I like vim but...
alias vim='nvim'

# 
# Shorthands for open 
####################################
alias opf='open . -a Finder'       # Finder
alias opc='open -a CodeRunner'     # CodeRunner
alias opx='open -a Xcode'          # Xcode
alias opv='open -a Visual\ Studio' # Visual Studio
####################################

#
# Shorthands for Exercism tests
######################################################################
alias mkdart='pub get; pub run test'                                 # Dart
alias mktest='mkdir build && cd build && cmake -G Xcode .. && cd ..' # C++
alias mkswift='swift package generate-xcodeproj && ls'               # Swift
alias mkphp='~/Desktop/projects/code/Exercism/phpunit.phar'          # PHP
######################################################################

#
# Shorthands for cd
########################################
alias cdd='cd ~/Desktop/'              # Desktop
alias cdw='cd ~/Downloads/'            # Downloads
alias cdt='cd ~/Documents/'            # Documents
alias cdp='cd ~/Desktop/projects'      # Projects
alias cd+='cd ~/Desktop/projects/cpp'  # Projects/C++
alias cdj='cd ~/Desktop/projects/java' # Projects/java
alias cds='cd ~/Desktop/projects/swift'# Projects/swift
alias cde='cd ~/Exercism'              # Projects/Exercism (symlinked)
alias cdc='cd ~/Desktop/cours'         # Cours
########################################

alias path='echo -e ${PATH//:/\\n}'
alias show_profile='vim ~/.profile'
#for those dumbass vscode extensions made for windows…
alias cls='clear'
# java shit
alias javafxc='javac --module-path $PATH_TO_FX'

alias cowtune='fortune | cowsay'

###############################################################################
#                ______                _   _                                  #
#               |  ____|              | | (_)                                 #
#               | |__ _   _ _ __   ___| |_ _  ___  _ __  ___                  #
#               |  __| | | | '_ \ / __| __| |/ _ \| '_ \/ __|                 #
#               | |  | |_| | | | | (__| |_| | (_) | | | \__ \                 #
#               |_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/                 #
#                                                                             #
###############################################################################

mkdyr() {
  for m in {1..12}; do
    command rmdir -v "${PWD\/$(date -d ${m}/1/1 +%m.\ %B)}"
  done
}

endl() {
  printf "\n"
}

export COLUMNS
ls() {
  command exa -lh --group-directories-first --time-style=iso "$@" --sort=type
  endl
}

cd() {
  builtin cd "$@"
  ls
  return $?
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
  command date &&\
  pillz "$@" &&\
  command date &&\
  command clear
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
}if [[ -z "$RC_DIR" ]]; then
  export RC_DIR="$(pwd)"
fi

source "$RC_DIR/.path.zshrc"
source "$RC_DIR/.functions.zshrc"
source "$RC_DIR/.alias.zshrc"

preexec() { 
  command clear 
}

# iterm2_shell_integration
if [[ -e "${HOME}/.iterm2_shell_integration.bash" ]]; then 
  source "${HOME}/.iterm2_shell_integration.bash"
fi

# Make sure it's here. :roll_eyes:
###############################################################################
#  llvm                                                                       #
###############################################################################

export PATH="/usr/local/opt/llvm/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"

###############################################################################

###############################################################################
#                          _____      _   _                                   #
#                         |  __ \    | | | |                                  #
#                         | |__) __ _| |_| |__                                #
#                         |  ___/ _` | __| '_ \                               #
#                         | |  | (_| | |_| | | |                              #
#                         |_|   \__,_|\__|_| |_|                              #
#                                                                             #
###############################################################################
# oh-my-zsh
export ZSH="${HOME}/.oh-my-zsh"

# export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"
# Zulu jdk 8 path
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home"
# JDK 13.0.1
#export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk-13.0.1.jdk/Contents/Home'
# JDK 11
#export JAVA_HOME='/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home'
# JDK 14
export JAVA_HOME='/Library/Java/JavaVirtualMachines/adoptopenjdk-14.jdk/Contents/Home'
# Add JAVA_HOME to path
export PATH="$JAVA_HOME:${PATH}"

# GraalVM
export PATH="/Library/Java/JavaVirtualMachines/graalvm-ce-java11-20.0.0/Contents/Home/bin:${PATH}"

#gradle
#export GRADLE_HOME="/opt/gradle-4.9/"
#export PATH="$PATH:$GRADLE_HOME/bin"

#cargo
export PATH="$HOME/.cargo/bin:$PATH"

# For compilers to find ncurses
#export LDFLAGS="-L/usr/local/opt/ncurses/lib"
#export CPPFLAGS="-I/usr/local/opt/ncurses/include"

# pkg-config find ncurses
export PKG_CONFIG_PATH="/usr/local/opt/ncurses/lib/pkgconfig"

# Python3
export PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"

# OPAM configuration
export PATH="/usr/local/opt/expat/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# bison and flex
export PATH="/usr/local/opt/bison/bin:$PATH"
export PATH="/usr/local/opt/flex/bin:$PATH"

# Boost library? Maybe I don't know 
export PATH="/usr/local/Cellar/boost/1.68.0/:$PATH"

# sqlite 
export PATH="/usr/local/opt/sqlite/bin:$PATH"
#export LDFLAGS="-L/usr/local/opt/sqlite/lib"
#export CPPFLAGS="-I/usr/local/opt/sqlite/include"

#For pkgconfig to find sqlite:
export PKG_CONFIG_PATH="/usr/local/opt/sqlite/lib/pkgconfig"

# Gnu coreutils PATH 
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# openssl
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
#export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
#export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"

# llvm
#To use the bundled libc++ please add the following LDFLAGS:
LDFLAGS="-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib"
#
#llvm is keg-only, which means it was not symlinked into /usr/local,
export PATH="/usr/local/opt/llvm/bin:$PATH"
#
#For compilers to find llvm you may need to set:
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"

#g++
#export LDFLAGS="-L/usr/local/Cellar/gcc/10.2.0_4/lib"

# path for PWD/.bin
export PATH="${RC_DIR}/.bin:${PATH}"

#Warning: Homebrew's "sbin" was not found in your PATH but you have installed
#formulae that put executables in /usr/local/sbin.
#Consider setting your PATH for example like so:
export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/viraltaco/Desktop/projects/Flutter/flutter/bin:$PATH"


