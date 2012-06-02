#!/bin/bash

# Functions to get the command line git and rvm info working
function rvm_version {
  local gemset=$(echo $GEM_HOME | awk -F'@' '{print $2}')
  [ "$gemset" != "" ] && gemset="@$gemset"
  local version=$(echo $MY_RUBY_HOME | awk -F'-' '{print $2}')
  [ "$version" != "" ] && version="@$version"
  local full="$version$gemset"
  [ "$full" != "" ] && echo "$full "
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function proml {
  local        BLUE="\[\033[0;34m\]"
  local         RED="\[\033[0;31m\]"
  local   LIGHT_RED="\[\033[1;31m\]"
  local       GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local       WHITE="\[\033[1;37m\]"
  local  LIGHT_GRAY="\[\033[0;37m\]"
  case $TERM in
    xterm*)
    TITLEBAR='\[\033]0;\u@\h:\w\007\]'
    ;;
    *)
    TITLEBAR=""
    ;;
  esac

PS1="${TITLEBAR}\
$BLUE[$RED\$(rvm_version)$BLUE]\
$BLUE[$RED\u@\h:\W$GREEN\$(parse_git_branch)$BLUE]\
$GREEN\$ "
PS2='> '
PS4='+ '
}
proml

# End of prompt stuff

# alias definitions
alias rubydev='cd ~/workspace/rubyDevelopment'
alias dev='cd ~/workspace'
alias jsdev='cd ~/workspace/jsDevelopment'
alias pythondev='cd ~/workspace/pythonDevelopment'
alias rails_source_dev='cd ~/workspace/rubyDevelopment/rails_source/rails'
alias reloadbash='source ~/.bash_profile'

#function definitions, these can take arguments

# must be run from the wordpressSites directory
# argument 1 is client directory name
# argument 2 is environment
#wordpressconfig () {
#	rm ./wordpressRoot/wp-config.php; 
#	ln -s ~/workspace/wordpressSites/clients/$1/wp-config.$2.php ./wordpressRoot/wp-config.php
#}

watchfile () {
	tail -f $1
}

source ~/Developer/.developer.profile

source ~/git-completion.bash

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
