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
# java home
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"
# Zulu jdk 8 path
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home"
# JDK 13.0.1
#export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk-13.0.1.jdk/Contents/Home'
# JDK 11
export JAVA_HOME='/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home'
export PATH="$JAVA_HOME:${PATH}"
#gradle
#export GRADLE_HOME="/opt/gradle-4.9/"
#export PATH="$PATH:$GRADLE_HOME/bin"
#cargo
#export PATH="$HOME/.cargo/bin:$PATH"
# For compilers to find ncurses
export LDFLAGS="-L/usr/local/opt/ncurses/lib"
export CPPFLAGS="-I/usr/local/opt/ncurses/include"
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
export LDFLAGS="-L/usr/local/opt/sqlite/lib"
export CPPFLAGS="-I/usr/local/opt/sqlite/include"
#For pkgconfig to find sqlite:
export PKG_CONFIG_PATH="/usr/local/opt/sqlite/lib/pkgconfig"
# Gnu coreutils PATH 
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
# openssl
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

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
####################################
alias cdd='cd ~/Desktop/'          # Desktop
alias cdw='cd ~/Downloads/'        # Downloads
alias cdt='cd ~/Documents/'        # Documents
alias cdp='cd ~/Desktop/projects'  # Projects
alias cdc='cd ~/Desktop/cours'     # Cours
####################################

alias show_profile='vim ~/.profile'
#for those dumbass vscode extensions made for windows…
alias cls='clear'
alias g++='g++-8'
# java shit
alias javafxc='javac --module-path $PATH_TO_FX'

###############################################################################
#                  _____ _             _                                      #
#                 / ____| |           | |                                     #
#                | (___ | |_ __ _ _ __| |_ _   _ _ __                         #
#                 \___ \| __/ _` | '__| __| | | | '_ \                        #
#                 ____) | || (_| | |  | |_| |_| | |_) _                       #
#                |_____/ \__\__,_|_|   \__|\__,_| .__(_)                      #
#                                               | |                           #
#                                               |_|                           #                                            
###############################################################################
ZSH_THEME="tacoaster"
HIST_STAMPS="yyyy-mm-dd"

plugins=(git osx brew iterm2)
source $ZSH/oh-my-zsh.sh

# clear scrollback before running any command from prompt. 
preexec() { command clear }

# iterm2_shell_integration
[ -e "${HOME}/.iterm2_shell_integration.bash" ] && source "${HOME}/.iterm2_shell_integration.bash"
# show ls
ls