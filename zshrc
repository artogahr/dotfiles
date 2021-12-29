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

    # Load the theme.
    # antibody bundle robbyrussell/oh-my-zsh path:themes/robbyrussell.zsh-theme
    antibody bundle dracula/zsh

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

    path=(
        $HOME/.local/bin
        $HOME/.bin
        $HOME/bin
        $HOME/.composer/vendor/bin
        $HOME/.go/bin
        $path
    )

    setopt auto_cd
    cdpath=(
        $HOME/Code
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
    alias mux="tmuxinator"
    alias copy="xclip -selection clipboard"
    alias paste="xclip -o -selection clipboard"
    alias ag="sag"
    #alias cat="bat"
    alias webcam="gphoto2 --stdout --capture-movie | ffmpeg -i - -vcodec rawvideo -pix_fmt yuv420p -threads 0 -f v4l2 /dev/video1"

    # Open vim with z argument
    v() {
      if [ -n "$1" ]; then
        z $1
      fi

      nvim
    }

    # cd() {
    #     cd $1 && eval ls
    # }
    # alias cd="cdls"
    open () {
        xdg-open $* > /dev/null 2>&1
    }

    if (( $+commands[tag] )); then
        tag() { command tag "$@"; source ${TAG_ALIAS_FILE:-/tmp/tag_aliases} 2>/dev/null }
        alias ag=tag
    fi

# }}}

# Interactive shell startup scripts {{{
# ==============================================================================

    if [[ $- == *i* && $0 == '/bin/zsh' ]]; then
        ~/.dotfiles/scripts/login.sh
    fi

# }}}

# vim: set nospell foldmethod=marker foldlevel=0:

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
