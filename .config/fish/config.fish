alias ls="eza -al --git-repos"
alias cat='bat'

set -x EDITOR "emacsclient -c"
set -g fish_escape_delay_ms 10
set -x LLVM_PATH /opt/homebrew/opt/llvm/bin

set -x PATH ~/.emacs.d/bin $PATH
set -x PATH /opt/homebrew/bin $PATH
set -x PATH /opt/homebrew/opt/grep/libexec/gnubin $PATH

zoxide init fish | source
