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

# source ~/.git-linked/git-linked.sh

export VIRTUAL_ENV_DISABLE_PROMPT=1

# use the docker engine inside minikube if it's installed
hash minikube 2>/dev/null && eval $(minikube docker-env)

export PATH="$HOME/.pyenv/bin:$PATH"
hash pyenv 2>/dev/null && eval "$(pyenv init -)"
hash pyenv 2>/dev/null && eval "$(pyenv virtualenv-init -)"

