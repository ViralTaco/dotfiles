# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="tacoaster"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx brew iterm2)

source $ZSH/oh-my-zsh.sh

###############################################################################
#                          _____      _   _                                   #
#                         |  __ \    | | | |                                  #
#                         | |__) __ _| |_| |__                                #
#                         |  ___/ _` | __| '_ \                               #
#                         | |  | (_| | |_| | | |                              #
#                         |_|   \__,_|\__|_| |_|                              #
#                                                                             #
###############################################################################

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

# Link libc++
# export CPPFLAGS="-I/usr/local/Cellar/gcc/8.2.0/include/c++/8.2.0"
# ncurses not symlinked into /usr/local because 
# macOS already provides another version
#export PATH="/usr/local/opt/ncurses/bin:$PATH"

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
# the linker is probably not gonna like that anyway
export PATH="/usr/local/Cellar/boost/1.68.0/:$PATH"
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# sqlite 
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/sqlite/lib"
export CPPFLAGS="-I/usr/local/opt/sqlite/include"
#For pkgconfig to find sqlite:
export PKG_CONFIG_PATH="/usr/local/opt/sqlite/lib/pkgconfig"

# Gnu coreutils PATH 
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
# To use the bundled libc++ please add the following LDFLAGS:
#  LDFLAGS="-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib"

#llvm is keg-only, which means it was not symlinked into /usr/local,
#because macOS already provides this software and installing another version in
#parallel can cause all kinds of trouble.

#If you need to have llvm first in your PATH run:
#  echo 'export PATH="/usr/local/opt/llvm/bin:$PATH"' >> ~/.bash_profile

#For compilers to find llvm you may need to set:
#  export LDFLAGS="-L/usr/local/opt/llvm/lib"
#  export CPPFLAGS="-I/usr/local/opt/llvm/include"

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

# ls
export COLUMNS
function ls() {
  endl; command exa -lh --group-directories-first --time-style=iso "$@"; endl 
}

function dir() {
  ls -alhGF --color=always | less -R -X -F
}

# disk space
function disk_space() {
  command df -am | less -R -X -F
}

function cd() {
  builtin cd "$@"; ls
}

# clear don't clear scrollback
alias clear='clear -x'

###############################################################################
#                                   _ _                                       #
#                             /\   | (_)                                      #
#                            /  \  | |_  __ _ ___                             #
#                           / /\ \ | | |/ _` / __|                            #
#                          / ____ \| | | (_| \__ \                            #
#                         /_/    \_|_|_|\__,_|___/                            #
#                                                                             #
###############################################################################

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
alias cdp='cd ~/Desktop/projects'  # Projects
alias cdc='cd ~/Desktop/cours'     # Cours
####################################

alias show_profile='vim ~/.zshrc'

#for those dumbass vscode extensions made for windows…
alias cls='clear'
alias g++='g++-8'

# clang format
alias cform='clang-format -style=Google -i'

# java shit
alias javafxc='javac --module-path $PATH_TO_FX'
alias rng='~/code/C++/pseudo_random_decision_maker/rng'

# cdspell (fix typos when cd'ing into dirs) 
#shopt -s cdspell

# iterm2_shell_integration
[ -e "${HOME}/.iterm2_shell_integration.bash" ] && source "${HOME}/.iterm2_shell_integration.bash"

#
#  list files on startup.
#  This has to be the last line in this file. 
#
ls