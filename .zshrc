#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
alias vi="vim"
alias ssh='TERM=xterm ssh'
alias git-clean-merged="git branch --merged | egrep -v '(^\*|master)' | xargs git branch -d"
alias ops-prod="ssh -f -N -p 6622 -L 8000:10.10.10.10:80 bwirtz@176.31.26.43"
alias ops-stag="ssh -f -N -p 6622 -L 7000:10.20.10.10:80 bwirtz@46.105.218.49"
alias proxy_geny="ssh -qfN -D 3118 bwirtz@90.63.160.186"
alias proxy_zero="ssh -CqfN -D 3118 zero"

export PAGER=most
export VISUAL=vim
export EDITOR="$VISUAL"
export ANSIBLE_NOCOWS=1
export PATH=$PATH:/home/baboon/tools:/usr/lib/node_modules
export PATH="$PATH:`yarn global bin`"
export ANSIBLE_VAULT_PASSWORD_FILE=~/.vault
export PYTHONPATH=/home/baboon/dev/genymotion-cloud/genymotion-cloud-be-messagebus/gmcmb/:$PYTHONPATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
