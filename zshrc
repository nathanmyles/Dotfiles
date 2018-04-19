source ~/.antigen.zsh
source ~/.antigenrc
source ~/.custom_functions

bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

if [[ "$OSTYPE" == "darwin"* ]] ;
then
  export NVM_DIR=~/.nvm
    . $(brew --prefix nvm)/nvm.sh
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools"

export PATH="$PATH:$HOME/Library/Android/sdk/tools"

export GOPATH="$HOME/Documents/workspace/go"
export PATH="$PATH:/usr/local/go/bin:$GOPATH/bin"

source ~/.git-linked/git-linked.sh

