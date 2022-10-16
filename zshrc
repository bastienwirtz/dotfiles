# Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi

alias vi="nvim"
alias vim="nvim"
alias ssh='TERM=xterm ssh'
alias git-clean-merged="git branch --merged | egrep -v '(^\*|master)' | xargs git branch -d"
alias nvminit="source /usr/share/nvm/init-nvm.sh"
alias uuid='python -c "import uuid; print(uuid.uuid4())"'
alias ls='exa --group-directories-first'
alias ll='exa -l --group-directories-first'
alias la='ll -a'

export PAGER=most
export VISUAL=nvim
export EDITOR="$VISUAL"
export ANSIBLE_NOCOWS=1
export PATH="$PATH:`yarn global bin`"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:~/.dotfiles/scripts:/usr/lib/node_modules:~/.local/bin

if [[ -f ~/.zshrc-ext ]]; then
    source ~/.zshrc-ext
fi
