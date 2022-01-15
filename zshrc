# Plugins {{{
# ==============================================================================

    # Load the Antibody plugin manager for zsh.
    source <(antibody init)

    # Setup required env var for oh-my-zsh plugins
    antibody bundle robbyrussell/oh-my-zsh
    antibody bundle robbyrussell/oh-my-zsh path:plugins/jump
    antibody bundle robbyrussell/oh-my-zsh path:plugins/nmap
    antibody bundle robbyrussell/oh-my-zsh path:plugins/pass
    antibody bundle robbyrussell/oh-my-zsh path:plugins/rsync

    # Other bundles
    antibody bundle sampson-chen/sack
    antibody bundle zsh-users/zsh-autosuggestions

    # This needs to be the last bundle.
    antibody bundle zsh-users/zsh-syntax-highlighting


# }}}

# Configuration {{{
# ==============================================================================

    HYPHEN_INSENSITIVE="true"
    ENABLE_CORRECTION="false"
    COMPLETION_WAITING_DOTS="true"
    HIST_STAMPS="yyyy-mm-dd"

    typeset -U path cdpath fpath

    # Vim mode
    bindkey -v
    export KEYTIMEOUT=1

    export GIT_EDITOR=nvim

    GOPATH=$HOME/go
    GOROOT=/usr/lib/go

    path=(
	$GOPATH/bin
        $HOME/.local/bin
        $HOME/.bin
        $HOME/bin
        $HOME/.composer/vendor/bin
        $HOME/.go/bin
        $path
    )

    zstyle ':completion:*' group-name ''
    zstyle ':completion:*:descriptions' format %d
    zstyle ':completion:*:descriptions' format %B%d%b
    zstyle ':completion:*:complete:(cd|pushd):*' tag-order \
            'local-directories named-directories'

    export EDITOR='nvim'
    export NVIM_LISTEN_ADDRESS='/tmp/nvimsocket'
    export ARTISAN_OPEN_ON_MAKE_EDITOR='nvr'
    export FZF_DEFAULT_COMMAND='ag -u -g ""'

    unsetopt sharehistory

# }}}

# Aliases & Functions {{{
# ==============================================================================

    # General
    alias vim="nvim"
    alias ssh="kitty +kitten ssh"
    # Stop and Remove all containers
    alias drmaci='(docker stop $(docker ps -a -q) || true) && (docker rm $(docker ps -a -q) || true)'


    # cd() {
    #     cd $1 && eval ls
    # }
    # alias cd="cdls"
    open () {
        xdg-open $* > /dev/null 2>&1
    }

# }}}
