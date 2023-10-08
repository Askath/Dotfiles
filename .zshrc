
export PATH=/Users/taradruffel/nvim/bin:$PATH

export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export JAVA_HOME="/opt/homebrew/opt/openjdk@17"
export USERNAME=taradruffel


source <(ng completion script)

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

alias ls="exa -al"
alias cat=bat
alias n=nvim

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
