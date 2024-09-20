##                                                                          open
alias opf='open . -a Finder'                                                   # Finder
alias opc='open -a CodeRunner'                                                 # CodeRunner
alias opx='open -a Xcode'                                                      # Xcode
##                                                 								Exercism tests
alias mktest='mkdir build && cd build; cd ..; cmake -G Xcode .'                # C++
alias mkswift='swift package generate-xcodeproj && ls'                         # Swift
##                                                                          cd ~/
alias cdd='cd ~/Desktop/'                                                      # Desktop
alias cdw='cd ~/Downloads/'                                                    # Downloads
alias cdt='cd ~/Documents/'                                                    # Documents
alias cdp='cd ${PROJECTS_PATH}'          	                                     # Projects
alias cdx='cd ${PROJECTS_PATH}/cpp'      	                                     # Projects/C++
alias cdj='cd ${PROJECTS_PATH}/java'     	                                     # Projects/java
alias cds='cd ${PROJECTS_PATH}/swift'    	                                     # Projects/swift
alias cde='cd ~/Exercism'                                                      # Projects/Exercism (symlinked)
alias cdc='cd ~/Desktop/cours'                                                 # Cours

alias clear='clear -x'
alias cls='clear'

alias profile='cdt && lsa'
alias path='echo -e ${PATH//:/\\n}'
