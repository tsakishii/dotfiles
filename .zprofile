#!/bin/zsh

# # rust setup & add to PATH
# . "$HOME/.cargo/env"
# export PATH="$HOME/.cargo/bin:$PATH"

# # python environments 'pyenv'
# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

# programs
export BROWSER="firefox"
export TERMINAL="alacritty"
export VISUAL=emacsclient
export EDITOR="$VISUAL"


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

export GRADLE_HOME=/opt/gradle/gradle-7.4.2
export PATH=$GRADLE_HOME/bin:$PATH
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
