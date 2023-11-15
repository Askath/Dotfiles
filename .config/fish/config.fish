set PATH /Users/taradruffel/nvim/bin $PATH
set -x PATH /opt/homebrew/bin $PATH

set PATH /opt/homebrew/opt/openjdk@17/bin $PATH
set -x JAVA_HOME /opt/homebrew/opt/openjdk@17
set -x USERNAME taradruffel

starship init fish | source
zoxide init fish | source

alias ls="exa -al"
alias cat='bat'
alias n='nvim'
