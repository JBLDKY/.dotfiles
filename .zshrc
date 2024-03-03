# General binaries bin
export PATH=$HOME/bin:/usr/local/bin:$PATH
PATH="/usr/local/bin:$PATH"
export PATH=/home/jord/.local/bin:$PATH

# zsh
source $ZSH/oh-my-zsh.sh
ZSH_THEME="gruvbox"
SOLARIZED_THEME="dark"
export ZSH="$HOME/.oh-my-zsh"

# git
plugins=(git)

# Zig
export PATH=$PATH:$HOME/zig/compiler/

# Starship
eval "$(starship init zsh)"

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Golang
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/home/jord/Downloads/

# Elixir
. "$HOME/.asdf/asdf.sh"
fpath=(${ASDF_DIR}/completions $fpath)
autoload -Uz compinit && compinit

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Functions
function fn() {
    local file
    file=$(rg --files | fzf) && nvim "$file"
}

function new_cd() {
    local alias_name=$1
    local current_dir=$(pwd)
    echo "alias $alias_name='cd $current_dir'" >> ~/.zshrc
    echo "Alias $alias_name added for $current_dir"
}

# Zoxide
eval "$(zoxide init zsh)"     

# Aliases
alias inv='cd /home/jord/projects/invaders'
alias sinv='cd /home/jord/projects/sinvaders'
alias gs="git status"
alias cplastcom="fc -ln -1 | xsel -ib"
alias cwd="pwd | xsel -ib"
alias pt="python3 -m pytest"
alias ptv="python3 -m pytest -vv"
alias ls="exa"
alias check-unused='rg -v -f ./src/requirements.txt "import (\w+)" -r "$1.py" | sed "s/.py//" | sort | uniq > /tmp/requirements-unused.txt && bat --color=always --style=numbers --line-range=:10 /tmp/requirements-unused.txt'
alias godot="/home/system76/extradrive/godot/bin"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias cdf='cd $(find * -type d -print 2> /dev/null | fzf)'
alias rgf="rg --files | rg"
alias sd='cd /home/system76/extradrive'

