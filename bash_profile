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

export PATH="/usr/local/heroku/bin:/usr/local/bin:$HOME/.jenv/bin:$PATH"
source ~/.developer.profile

eval "$(jenv init -)"

# Add GHC 7.10.2 to the PATH, via https://ghcformacosx.github.io/
export GHC_DOT_APP="/Applications/ghc-7.10.2.app"
if [ -d "$GHC_DOT_APP" ]; then
  export PATH="${HOME}/.local/bin:${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi

