#!/bin/zsh

# zsh
export ZDOTDIR="$HOME/.config/zsh"

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# # aws
# export AWS_SHARED_CREDENTIALS_FILE="${XDG_CONFIG_HOME}/aws/credentials"
# export AWS_CONFIG_FILE="${XDG_CONFIG_HOME}/aws/config"

# default programs
export BROWSER="firefox"
export TERMINAL="alacritty"
export EDITOR='emacsclient -a emacs'
export VISUAL='emacsclient -c -a emacs'

# Almighty GNU Emacs binding
bindkey -e

# Remove annoying beep
unsetopt BEEP

# Load colors
autoload -Uz colors && colors

# Completions
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -D ~/.cache/zsh/zcompdump-$ZSH_VERSION
_comp_options+=(globdots) # Shows hidden files

# History settings
HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE=$HOME/.cache/zsh/history

# Source aliases
source $ZDOTDIR/aliases

# Source functions
source ~/.config/zsh/zsh-functions

# Config files
zsh_add_file "zsh-prompt"

# Community plugins
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "zsh-users/zsh-autosuggestions"
