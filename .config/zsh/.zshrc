# Almighty GNU Emacs binding
bindkey -e

# Remove annoying beep
unsetopt BEEP

# Load colors
autoload -Uz colors && colors

# Completions
autoload -Uz compinit
[ -d "$XDG_CACHE_HOME"/zsh ] || mkdir -p "$XDG_CACHE_HOME"/zsh
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME"/zsh/zcompcache
zmodload zsh/complist
compinit -d "${XDG_CACHE_HOME}"/zsh/zcompdump-$ZSH_VERSION
_comp_options+=(globdots) # Shows hidden files

# History settings
HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE="$XDG_CACHE_HOME"/zsh/history

# Kubectl completion
if command -v kubectl >/dev/null; then
    source <(kubectl completion zsh)
fi

# Initialize Pyenv
if command -v pyenv >/dev/null; then
    eval "$(pyenv init -)"
fi

# Initialize pyenv-virtualenv if installed
if command -v pyenv-virtualenv-init >/dev/null; then
    eval "$(pyenv virtualenv-init -)"
fi

# Source aliases
source $ZDOTDIR/aliases

# Source functions
[ -f $ZDOTDIR/zsh-functions ] && source $ZDOTDIR/zsh-functions

[ -f $ZDOTDIR/ssh-functions ] && source $ZDOTDIR/ssh-functions

# Config files
zsh_add_file "zsh-prompt"

# Community plugins
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "zsh-users/zsh-autosuggestions"

# Keychain
if command -v keychain > /dev/null && [[ -t 0 ]]; then
  eval "$(keychain --quiet --eval github_id_ed25519)"
fi

# NVM init
[[ -d "$XDG_CONFIG_HOME/nvm" ]] && NVM_DIR="${XDG_CONFIG_HOME}/nvm" && \
[[ -s "${NVM_DIR}/nvm.sh" ]] && . "${NVM_DIR}/nvm.sh" && \
[[ -s "${NVM_DIR}/bash_completion" ]] && . "${NVM_DIR}/bash_completion"

