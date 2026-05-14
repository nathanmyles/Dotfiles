source ~/.antigen.zsh
source ~/.antigenrc
source ~/.custom_functions

bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

# opencode
export PATH=/Users/nathanmyles/.opencode/bin:$PATH

# nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

