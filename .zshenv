# add to path
# set PATH so it includes private bin if it exists
[[ -d "$HOME/bin" ]] && PATH="${HOME}/bin:$PATH"
[[ -d "$HOME/.local/bin" ]] && PATH="${HOME}/.local/bin:$PATH"

# XDG basic directories
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share/"
export XDG_STATE_HOME="${HOME}/.local/state/"
export XDG_DATA_DIRS="/usr/share/:/usr/local/share/:${HOME}/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share"

# ZDOTDIR
export ZDOTDIR="${HOME}/.config/zsh"

if [[ -o login ]]; then
    [[ -f "${ZDOTDIR}/.zprofile" ]] && source "${ZDOTDIR}/.zprofile"
fi

# default programs
export BROWSER="zen"
export TERMINAL="alacritty"
export VISUAL="emacsclient -c -a emacs"
export EDITOR="$VISUAL"

# used for compiling emacs
# export CC=/usr/bin/gcc-11 CXX=/usr/bin/gcc-11

# go
export PATH="/usr/local/go/bin:$PATH"
export GOPATH="${XDG_DATA_HOME}/go"
[[ -d $GOPATH ]] && export PATH="$GOPATH/bin:$PATH"
export GOMODCACHE="${XDG_CACHE_HOME}/go/mod"

# aws
export AWS_SHARED_CREDENTIALS_FILE="${XDG_CONFIG_HOME}/aws/credentials"
export AWS_CONFIG_FILE="${XDG_CONFIG_HOME}/aws/config"

# ansible
export ANSIBLE_HOME="${XDG_CONFIG_HOME}/ansible"
export ANSIBLE_CONFIG="${ANSIBLE_HOME}/ansible.cfg"
export ANSIBLE_GALAXY_CACHE_DIR="${ANSIBLE_HOME}/galaxy_cache"

# docker
export DOCKER_CONFIG="${XDG_CONFIG_HOME}/docker"

# k8s
export KUBECONFIG="${XDG_CONFIG_HOME}/kube"
export KUBECACHEDIR="${XDG_CACHE_HOME}/kube"

# minikube
export MINIKUBE_HOME="${XDG_DATA_HOME}/minikube"

# set the wgetrc file
export WGETRC="${XDG_CONFIG_HOME}/wgetrc"

# set leiningen home
export LEIN_HOME="${XDG_DATA_HOME}/lein"

# use if Gradle is installed
# export GRADLE_HOME=/opt/gradle/gradle-7.4.2
# export PATH=$GRADLE_HOME/bin:$PATH
# export JAVA_HOME="/usr/lib/jvm/java-1.21.0-openjdk-amd64"
# export PATH="${JAVA_HOME}/bin:$PATH"

# python environments 'pyenv'
export PYENV_ROOT="${XDG_DATA_HOME}/pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"

# npmrc
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}/npm/npmrc"
export PATH="${XDG_DATA_HOME}/npm/bin:$PATH"

# wine
#[[ -d "$XDG_DATA_HOME/wineprefixes" ]] && WINEPREFIX="${XDG_DATA_HOME}/wineprefixes/default"
