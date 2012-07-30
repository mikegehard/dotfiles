#!/bin/bash

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}

function set_bash_prompt (){
  local GREEN="\[\033[0;32m\]"
  local BLUE="\[\033[0;34m\]"
  local RED="\[\033[0;31m\]"
  local LIGHT_RED="\[\033[1;31m\]"
  local LIGHT_BLUE="\[\033[1;34m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local WHITE="\[\033[1;37m\]"
  PS1="$LIGHT_RED\w$LIGHT_BLUE:\$(parse_git_branch)$LIGHT_GREEN:\$(~/.rvm/bin/rvm-prompt)\n$RED> $GREEN"
}

PROMPT_COMMAND=set_bash_prompt

# End of prompt stuff

# alias definitions
alias reloadbash='source ~/.bash_profile'

watchfile () {
	tail -f $1
}

source ~/Developer/.developer.profile

source ~/workspace/dotfiles/git-completion.bash

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
