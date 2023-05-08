# Aliases
## emacs
alias emdae='emacs --daemon'
alias emkill='emacsclient -e "(kill-emacs)"'
alias emstart='emacsclient -c -a emacs'

## grep
#alias ag='grep --color-match="1;31"'
#alias grep='ag --color-match="1;31"'

## zshell
alias zsrc='source $ZDOTDIR/.zshrc'

## ls
alias ll='ls -l --color=auto'
alias la='ls -la --color=auto'

## Kubernetes & Minikube
alias mk="minikube kubectl --"
alias k="kubectl"
source <(kubectl completion zsh)

## the-fuck
eval $(thefuck --alias)

## youtube-dl
alias yt='youtube-dl --add-metadata -i'
alias yta='youtube-dl -x -f bestaudio/best'

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

# Source functions
source ~/.config/zsh/zsh-functions

# Config files
zsh_add_file "zsh-prompt"

# Community plugins
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "zsh-users/zsh-autosuggestions"
