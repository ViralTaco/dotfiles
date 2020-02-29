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
