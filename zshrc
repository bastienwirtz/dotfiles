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
alias git-clean-merged="git branch --merged | egrep -v '(^\*|master|develop)' | xargs git branch -d"
alias nvminit="source /usr/share/nvm/init-nvm.sh"
alias uuid='python -c "import uuid; print(uuid.uuid4())"'
alias ls='eza --group-directories-first'
alias ll='eza -l --group-directories-first'
alias la='eza -a'
alias dps='docker ps --format "table {{.Names}}\t{{.RunningFor}}\t{{.Status}}({{.State}})\t{{.Ports}}"'
alias k=kubectl
alias gotest='gotestsum --format-hide-empty-pkg'
alias cura='cura -platformtheme gtk3'

export GTK_THEME="Arc-Dark"
#export GTK_USE_PORTAL=0
export PAGER=most
export VISUAL=nvim
export EDITOR="$VISUAL"
export ANSIBLE_NOCOWS=1
export PATH="$PATH:`yarn global bin`"
export GOPATH=$HOME/go
export GOMODCACHE="$HOME/go/pkg/mod"
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:~/.dotfiles/scripts:/usr/lib/node_modules:~/.local/bin
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH=$PATH:~/.local/share/gem/ruby/3.0.0/bin
export PICO_SDK_PATH=/usr/share/pico-sdk

if [[ -f ~/.zshrc-ext ]]; then
    source ~/.zshrc-ext
fi
