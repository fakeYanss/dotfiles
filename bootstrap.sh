#!/usr/bin/env bash

function main() {
    log "Pipixia, Here we go..."

    setup_sudo

    # git pull origin master

    # base, keep order
    if [[ $1 == '-no-brew' ]]; then
        log "skip homebrew"
    else
        setup_brew
    fi
    setup_sed
    setup_ssh
    setup_git
    setup_ruby
    setup_zsh
    setup_tmux
    setup_starship

    # extra software
    setup_java $JAVA_MAIN_VERSION $JAVA_SUB_VERSION
    setup_python $PYTHON_MAIN_VERSION $PYTHON_SUB_VERSION
    setup_node
    setup_golang $GOLANG_VERSION
    setup_rust

    setup_picgo
    setup_hammerspoon
    setup_iterm2

    setup_mac
    setup_extra
    log "Good job! All of dotfiles have been installed :)"
}

DOTFILES=$(git rev-parse --show-toplevel)
source $DOTFILES/conf/conf.sh
source $DOTFILES/bin/include.sh

main "$@"
