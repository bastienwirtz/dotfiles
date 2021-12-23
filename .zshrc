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

if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*|alacritty*)
     PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
  screen*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac

alias vi="nvim"
alias vim="nvim"
alias ssh='TERM=xterm ssh'
alias git-clean-merged="git branch --merged | egrep -v '(^\*|master)' | xargs git branch -d"
alias pytest="pytest --show-capture=no -s"
alias nvminit="source /usr/share/nvm/init-nvm.sh"
alias uuid='python -c "import uuid; print(uuid.uuid4())"'

export PAGER=most
export VISUAL=nvim
export EDITOR="$VISUAL"
export ANSIBLE_NOCOWS=1
export PATH="$PATH:`yarn global bin`"
export ANSIBLE_VAULT_PASSWORD_FILE=~/.vault
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

