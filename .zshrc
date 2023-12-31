export PATH=/Users/taradruffel/nvim/bin:$PATH

export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export JAVA_HOME="/opt/homebrew/opt/openjdk@17"
export USERNAME=taradruffel


eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

alias ls="exa -al"
alias cat=bat

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
. /opt/homebrew/opt/asdf/libexec/asdf.sh
