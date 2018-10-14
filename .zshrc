# Oh-my-zsh configuration.
ZSH=/usr/share/oh-my-zsh/

# Zsh theme (~/.oh-my-zsh/themes/)
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bira"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Zsh plugins (~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# aliases
alias ls='ls --color=auto -F'
alias la='ls --color=auto -F -lha'
alias ll='ls --color=auto -F -lh'
alias grep='grep --color'
alias hist="grep '$1' /home/baboon/.zsh_history"
alias vi="vim"
alias du="du -h"
alias df="df -h"
alias ssh='TERM=xterm ssh'

export PAGER=most
export EDITOR=vim
export PATH=$PATH:/home/baboon/tools:/usr/lib/node_modules


alias git-clean-merged="git branch --merged | egrep -v '(^\*|master)' | xargs git branch -d"

PROMPT="[${user_host}] ${current_dir} ${return_code}
%B❯%b "
RPS1="${git_branch} %T"

export ANSIBLE_NOCOWS=1
