source ~/.antigen.zsh
source ~/.antigenrc

bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

setjdk() {
	export JAVA_HOME=$(/usr/libexec/java_home -v $1)
}


# opencode
export PATH=/Users/nathanmyles/.opencode/bin:$PATH
