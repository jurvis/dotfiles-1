#!/bin/bash


# brew cask options
# https://github.com/caskroom/homebrew-cask/issues/2534
# https://github.com/caskroom/homebrew-cask/pull/9178#issuecomment-78128955
export HOMEBREW_CASK_OPTS="--appdir=/Applications"


# Add directories to path

# http://superuser.com/a/39840/9599
add_to_path() {
    if [[ "$PATH" =~ (^|:)"${1}"(:|$) ]]
    then
        return 0
    fi
    export PATH="$1:$PATH"
}

add_to_path "$HOME/bin"


# bash completion
# https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion#homebrew

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi


# extra bash aliases

[ -r ~/.bash_aliases ] && source ~/.bash_aliases
[ -r ~/.bash_aliases_osx ] && source ~/.bash_aliases_osx
