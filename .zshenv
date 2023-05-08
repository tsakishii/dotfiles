typeset -U PATH path
path=("$HOME/bin" "$HOME/.local/bin" "$path[@]")
export PATH

# zsh
export ZDOTDIR="$HOME/.config/zsh"

# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# aws
export AWS_SHARED_CREDENTIALS_FILE="${XDG_CONFIG_HOME}/.aws/credentials"
export AWS_CONFIG_FILE="${XDG_CONFIG_HOME}/.aws/config"

# default programs
export BROWSER="firefox"
export TERMINAL="alacritty"
export EDITOR='emacsclient -a emacs'
export VISUAL='emacsclient -c -a emacs'
