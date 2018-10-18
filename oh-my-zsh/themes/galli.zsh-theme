# ZSH Theme 
local return_code="%(?..%{$fg[red]%} %?%{$reset_color%})"


if [[ $UID -eq 0 ]]; then
    local user_host='%{$terminfo[bold]$fg[red]%}  %n@%m%{$reset_color%}'
    local user_symbol='#'
else
    local user_host='%{$terminfo[bold]$bg[black]%}$fg[green]%n@%m%{$reset_color%}'
    local user_symbol='❯'
fi

local current_dir='%{$terminfo[bold]$fg[white]%}%~%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="${user_host} ${current_dir} ${return_code}
%B${user_symbol}%b "
RPS1=" ${git_branch} %T"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%} "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

