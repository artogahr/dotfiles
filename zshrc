# Plugins {{{
# ==============================================================================

    # Load the Antibody plugin manager for zsh.
    source <(antibody init)

    # Setup required env var for oh-my-zsh plugins
 #   export ZSH="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"

    antibody bundle robbyrussell/oh-my-zsh
    antibody bundle robbyrussell/oh-my-zsh path:plugins/jump
    antibody bundle robbyrussell/oh-my-zsh path:plugins/nmap
    antibody bundle robbyrussell/oh-my-zsh path:plugins/pass
    antibody bundle robbyrussell/oh-my-zsh path:plugins/rsync
    antibody bundle robbyrussell/oh-my-zsh path:plugins/tmux
    antibody bundle robbyrussell/oh-my-zsh path:plugins/tmuxinator
    antibody bundle robbyrussell/oh-my-zsh path:plugins/z

    # Other bundles
    antibody bundle sampson-chen/sack
    antibody bundle zsh-users/zsh-autosuggestions

    # This needs to be the last bundle.
    antibody bundle zsh-users/zsh-syntax-highlighting
    antibody bundle dracula/zsh

# }}}

# Configuration {{{
# ==============================================================================

    HYPHEN_INSENSITIVE="true"
    ENABLE_CORRECTION="true"
    COMPLETION_WAITING_DOTS="true"
    HIST_STAMPS="yyyy-mm-dd"

    typeset -U path cdpath fpath

    # Vim mode
    bindkey -v
    # Search backwards and forwards with a pattern
    bindkey -M vicmd '/' history-incremental-pattern-search-backward
    bindkey -M vicmd '?' history-incremental-pattern-search-forward

    # set up for insert mode too
    bindkey -M viins '^R' history-incremental-pattern-search-backward
    bindkey -M viins '^F' history-incremental-pattern-search-forward

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

    unsetopt sharehistory

# }}}

# Aliases & Functions {{{
# ==============================================================================

    # General
    alias vim="nvim"
    alias ssh="kitty +kitten ssh"
    # Stop and Remove all containers
    alias drmaci='(docker stop $(docker ps -a -q) || true) && (docker rm $(docker ps -a -q) || true)'
    alias ii='sudo envycontrol --switch integrated && reboot'
    alias hh='sudo envycontrol --switch hybrid && reboot'
    alias nn='sudo envycontrol --switch nvidia && reboot'
    alias ss='sudo envycontrol --status'
    # Wireguard
    alias up='sudo wg-quick up wg0'
    alias down='sudo wg-quick down wg0'


    # cd() {
    #     cd $1 && eval ls
    # }
    # alias cd="cdls"
    open () {
        xdg-open $* > /dev/null 2>&1
    }

# }}}


