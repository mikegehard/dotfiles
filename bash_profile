#!/bin/bash

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function set_bash_prompt (){
  local GREEN="\[\033[0;32m\]"
  local BLUE="\[\033[0;34m\]"
  local RED="\[\033[0;31m\]"
  local LIGHT_RED="\[\033[1;31m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local WHITE="\[\033[1;37m\]"
  PS1="$LIGHT_RED\w:\$(parse_git_branch):\$(~/.rvm/bin/rvm-prompt)\n$RED> $GREEN"
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
