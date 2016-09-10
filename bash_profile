#!/bin/bash

# Path to the bash it configuration
export BASH_IT="/Users/mike/.bash_it"

# Lock and Load a custom theme file
export BASH_IT_THEME="bobby"

# Load Bash It
source $BASH_IT/bash_it.sh

# alias definitions
alias reloadbash='source ~/.bash_profile'

export EDITOR=/usr/bin/vim

export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.jenv/bin:$PATH"
export PATH="$HOME/Library/Haskell/bin:$PATH"
source ~/.developer.profile

eval "$(jenv init -)"

