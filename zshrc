if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi


source <(kubectl completion zsh)
alias k=kubectl
complete -F __start_kubectl k

# Put rest of stuff here



# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mikegehard/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mikegehard/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mikegehard/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mikegehard/google-cloud-sdk/completion.zsh.inc'; fi
