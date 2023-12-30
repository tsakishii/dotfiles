#!/bin/zsh

# zsh
export ZDOTDIR="$HOME/.config/zsh"

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
