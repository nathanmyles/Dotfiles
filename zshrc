source ~/.antigen.zsh
source ~/.antigenrc

bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

setjdk() {
	export JAVA_HOME=$(/usr/libexec/java_home -v $1)
}

