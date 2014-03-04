PS1=\
'%B%F{green}%n@%m%F{reset}%b'\
'%(1j,%F{cyan}[%j]%F{reset},)'\
':'\
'%B%F{blue}%~%F{reset}%b'\
'%F{red}$(git_prompt_string)%F{reset}$ '

RPS1="%(?,%F{green}:%)%F{reset},%F{red}%? :(%F{reset})"

GIT_PROMPT_SYMBOL=""
GIT_PROMPT_PREFIX="%{$fg[red]%} %{$reset_color%}"
GIT_PROMPT_SUFFIX="%{$fg[red]%}%{$reset_color%}"
GIT_PROMPT_AHEAD="%{$fg[green]%}↑%{$reset_color%}"
GIT_PROMPT_BEHIND="%{$fg[cyan]%}↓%{$reset_color%}"
GIT_PROMPT_MERGING="%{$fg_bold[magenta]%}⚡︎%{$reset_color%}"
GIT_PROMPT_UNTRACKED="%{$fg_bold[red]%}●%{$reset_color%}"
GIT_PROMPT_MODIFIED="%{$fg_bold[yellow]%}●%{$reset_color%}"
GIT_PROMPT_STAGED="%{$fg_bold[green]%}●%{$reset_color%}"
