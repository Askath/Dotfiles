alias ls="eza -al --git-repos"
alias cat='bat'
alias ec='emacsclient -c'

set -x EDITOR "emacsclient -c"
set -g fish_escape_delay_ms 10
set -x LLVM_PATH /opt/homebrew/opt/llvm/bin
set -x NODE_EXTRA_CA_CERTS "/Users/taradruffel/.workspace/repos/phoenix-core/optadata-gruppe-ODA-DC1-CA.crt"
set -x JAVA_HOME /opt/homebrew/opt/openjdk/
set -x USERNAME taradruffel

set -x PATH ~/.emacs.d/bin $PATH
set -x PATH /opt/homebrew/bin $PATH
set -x PATH /opt/homebrew/opt/grep/libexec/gnubin $PATH
set -x PATH /opt/homebrew/opt/openjdk/bin $PATH

zoxide init fish | source
