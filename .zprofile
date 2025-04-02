#!/bin/zsh

# XDG
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state/"
export XDG_DATA_DIRS="/usr/share/:/usr/local/share/:${HOME}/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share"

# default programs
export BROWSER="firefox"
export TERMINAL="alacritty"
export EDITOR='emacsclient -q -t -nw'
export VISUAL='emacsclient -c -a emacs'

# export CC=/usr/bin/gcc-10 CXX=/usr/bin/gcc-10

# add to path
# set PATH so it includes private bin if it exists
[[ -d "$HOME/bin" ]] && PATH="${HOME}/bin:$PATH"

[[ -d "$HOME/.local/bin" ]] && PATH="${HOME}/.local/bin:$PATH"

# AWS
export AWS_SHARED_CREDENTIALS_FILE="${XDG_CONFIG_HOME}/aws/credentials"
export AWS_CONFIG_FILE="${XDG_CONFIG_HOME}/aws/config"

# Docker
export DOCKER_CONFIG="${XDG_CONFIG_HOME}/docker"

# K8S
export KUBECONFIG="${XDG_CONFIG_HOME}/kube"
export KUBECACHEDIR="${XDG_CACHE_HOME}/kube"

# minikube
export MINIKUBE_HOME="${XDG_DATA_HOME}/minikube"

# Set the wgetrc file
export WGETRC="${XDG_CONFIG_HOME}/wgetrc"

# Set leiningen home
export LEIN_HOME="${XDG_DATA_HOME}/lein"

# npmrc
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}/npm/npmrc"

# Python environments 'pyenv'
export PYENV_ROOT="${XDG_DATA_HOME}/pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Rustup home
export RUSTUP_HOME="${XDG_DATA_HOME}/rustup"

# # rust setup & add to PATH
# . "$HOME/.cargo/env"
# export PATH="$HOME/.cargo/bin:$PATH"

# Use if Gradle is installed
# export GRADLE_HOME=/opt/gradle/gradle-7.4.2
# export PATH=$GRADLE_HOME/bin:$PATH
# export JAVA_HOME="/usr/lib/jvm/java-1.21.0-openjdk-amd64"
# export PATH="${JAVA_HOME}/bin:$PATH"

export PATH="/usr/local/go/bin:$PATH"
export GOPATH="${XDG_DATA_HOME}/go"
[[ -d $GOPATH ]] && export PATH="$GOPATH/bin:$PATH"
export GOMODCACHE="${XDG_CACHE_HOME}/go/mod"

# deno install
[[ -d "$HOME/.deno" ]] && DENO_INSTALL="${HOME}/.deno" && PATH="${DENO_INSTALL}/bin:$PATH"

# wine
#[[ -d "$XDG_DATA_HOME/wineprefixes" ]] && WINEPREFIX="${XDG_DATA_HOME}/wineprefixes/default"

# NVM init
[[ -d "$XDG_CONFIG_HOME/nvm" ]] && NVM_DIR="${XDG_CONFIG_HOME}/nvm" && \
[[ -s "${NVM_DIR}/nvm.sh" ]] && . "${NVM_DIR}/nvm.sh" && \
[[ -s "${NVM_DIR}/bash_completion" ]] && . "${NVM_DIR}/bash_completion"
