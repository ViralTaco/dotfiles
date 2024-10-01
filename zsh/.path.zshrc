##					                                                                                        .path.zshrc
# oh-my-zsh
export ZSH="${HOME}/.oh-my-zsh"
export JAVA_HOME='/Library/Java/JavaVirtualMachines/adoptopenjdk-14.jdk/Contents/Home'
export PATH="$HOME/.cargo/bin:$PATH"
export PKG_CONFIG_PATH="/usr/local/opt/ncurses/lib/pkgconfig"

# Python3
export PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"

# OPAM configuration
export PATH="/usr/local/opt/boost/lib/:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
# llvm
#To use the bundled libc++ please add the following LDFLAGS:
#
#llvm is keg-only, which means it was not symlinked into /usr/local,
export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="${RC_DIR}/.bin:${PATH}"
export PATH="/usr/local/bin:/usr/local/sbin${PATH+:$PATH}"
To use the bundled libunwind please use the following LDFLAGS:
  LDFLAGS="-L/opt/homebrew/opt/llvm/lib/unwind -lunwind"

To use the bundled libc++ please use the following LDFLAGS:
  LDFLAGS="-L/opt/homebrew/opt/llvm/lib/c++ -L/opt/homebrew/opt/llvm/lib/unwind -lunwind"
#export LDFLAGS="-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"
export HOMEBREW_PREFIX="/usr/local"
export HOMEBREW_CELLAR="/usr/local/Cellar"
export HOMEBREW_REPOSITORY="/usr/local/Homebrew"
export MANPATH="/usr/local/share/man${MANPATH+:$MANPATH}:"
export INFOPATH="/usr/local/share/info:${INFOPATH:-}"

#Chromium depot-tools
export PROJECTS_PATH="/Users/viraltaco_/Library/Mobile Documents/com~apple~CloudDocs/Projects"
export PATH="$PATH:${PROJECTS_PATH}/cpp/Browser/Chromium/depot_tools"
