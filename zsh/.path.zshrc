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

# llvm
#To use the bundled libc++ please add the following LDFLAGS:
#  LDFLAGS="-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib"
#
#llvm is keg-only, which means it was not symlinked into /usr/local,
export PATH="/usr/local/opt/llvm/bin:$PATH"
#
#For compilers to find llvm you may need to set:
#export LDFLAGS="-L/usr/local/opt/llvm/lib"
#export CPPFLAGS="-I/usr/local/opt/llvm/include"

# path for PWD/.bin
export PATH="${RC_DIR}/.bin:${PATH}"