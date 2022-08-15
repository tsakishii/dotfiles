#!/bin/zsh

# guix setup
GUIX_PROFILE="$HOME/.guix-profile"
. "$GUIX_PROFILE/etc/profile"


GUIX_PROFILE="$HOME/.config/guix/current"
. "$GUIX_PROFILE/etc/profile"

# rust setup & add to PATH
. "$HOME/.cargo/env"
export PATH="$HOME/.cargo/bin:$PATH"

# programs
export BROWSER="firefox"
export TERMINAL="alacritty"

# add to path
# set PATH so it includes private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export PATH=$HOME/bin:/usr/local/bin:$PATH

export GRADLE_HOME=/opt/gradle/gradle-7.4.2
export PATH=$GRADLE_HOME/bin:$PATH
export JAVA_HOME=/usr/lib/jvm/java-1.17.0-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Added by Toolbox App
export PATH="$HOME/.local/share/JetBrains/Toolbox/scripts:$PATH"
