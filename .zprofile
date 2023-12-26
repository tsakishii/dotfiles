#!/bin/zsh

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# # rust setup & add to PATH
# . "$HOME/.cargo/env"
# export PATH="$HOME/.cargo/bin:$PATH"

# # python environments 'pyenv'
# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

# default programs
export BROWSER="firefox"
export TERMINAL="alacritty"
export EDITOR='emacs -nw'
export VISUAL='emacsclient -c -a emacs'


# add to path
# set PATH so it includes private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# Set the wgetrc file
export WGETRC="$XDG_CONFIG_HOME/wgetrc"

# Set leiningen home
export LEIN_HOME="$XDG_DATA_HOME/lein"

# Use if Gradle is installed
# export GRADLE_HOME=/opt/gradle/gradle-7.4.2
# export PATH=$GRADLE_HOME/bin:$PATH
export JAVA_HOME=/usr/lib/jvm/java-1.21.0-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH

# # deno install
# export DENO_INSTALL="$HOME/.deno"
# export PATH="$DENO_INSTALL/bin:$PATH"

# # Added by Toolbox App
# export PATH="$HOME/.local/share/JetBrains/Toolbox/scripts:$PATH"

# # NVM init
# export NVM_DIR="$HOME/.config/nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
