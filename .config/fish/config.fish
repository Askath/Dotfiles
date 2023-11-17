set PATH /Users/taradruffel/nvim/bin $PATH
set PATH /Users/taradruffel/.cargo/bin $PATH
set -x PATH /opt/homebrew/bin $PATH
set PATH /Users/tarardruffel/.tmux/plugins/t-smart-tmux-session-manager/bin $PATH


set PATH /opt/homebrew/opt/openjdk@17/bin $PATH
set -x JAVA_HOME /opt/homebrew/opt/openjdk@17
set -x USERNAME taradruffel

starship init fish | source
zoxide init fish | source
source /opt/homebrew/opt/asdf/libexec/asdf.fish

alias ls="exa -al"
alias cat='bat'
alias n='nvim'
# ~/.tmux/plugins
#

alias gd='godot'
alias gde='godot -e'
