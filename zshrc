source ~/.antigen.zsh
source ~/.antigenrc
source ~/.custom_functions

bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export NVM_DIR=~/.nvm
  . $(brew --prefix nvm)/nvm.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools"

export PATH="$PATH:$HOME/Library/Android/sdk/tools"

