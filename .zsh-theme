if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
if [[ -n "$SSH_CLIENT"  ||  -n "$SSH2_CLIENT" ]]; then
	MCOLOR="yellow"; #SSH
else
	MCOLOR="magenta"; # no SSH
fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

PROMPT='\
╭─[%{$fg[cyan]%}%D{%F %I:%M:%S%p}%{$reset_color%}] \
%{$fg[$NCOLOR]%}%n%{$reset_color%}@%{$fg[$MCOLOR]%}%m\
%{$reset_color%} %{$fg_bold[cyan]%}%~ \
$(git_prompt_info) $(git_prompt_status)%{$reset_color%}
╰─%{$fg_bold[$NCOLOR]%}➤ %{$reset_color%}'

PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}("
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✔%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}⚡%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}✚ "
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%}⚑ "
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖ "
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%}▴ "
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[cyan]%}§ "
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$reset_color%}? "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[yellow]%})%{$reset_color%}"
