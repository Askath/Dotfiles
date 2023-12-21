set PATH /Users/taradruffel/nvim/bin $PATH
set PATH /Users/taradruffel/.cargo/bin $PATH
set -x PATH /opt/homebrew/bin $PATH
set PATH /Users/tarardruffel/.tmux/plugins/t-smart-tmux-session-manager/bin $PATH


set PATH /opt/homebrew/opt/openjdk@17/bin $PATH
set -x JAVA_HOME /opt/homebrew/opt/openjdk@17
set -x USERNAME taradruffel
set -x OPENAI_API_KEY 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
set -x LLVM_PATH /opt/homebrew/opt/llvm/bin

zoxide init fish | source

alias ls="exa -al"
alias cat='bat'
alias n='nvim'
alias w='watson'
# ~/.tmux/plugins
#

alias gd='godot'
alias gde='godot -e'

set PATH /Users/taradruffel/scripts $PATH


set -g fish_escape_delay_ms 10

# Liquibase settings
set -x DB_HOST 127.0.0.1
set -x DB_PORT 3306
set -x DB_SOURCE phoenix-database
set -x DB_USER blackend
set -x DB_PASSWORD blackend
set -x KEYCLOAK_ISSUER_URI https://login.integration.entwickler.one/auth/realms/one
set -x EXCHANGE_USER_UUID 01234567-0123-0123-0123-0123456789ab


#work setting
set PATH /opt/homebrew/opt/openjdk@17/bin $PATH
set PATH /Users/taradruffel/lombok $PATH
set -x JAVA_HOME /opt/homebrew/opt/openjdk@17
set -x USERNAME taradruffel
set -x isProduction false
set -x FZF_COMPLETION_TRIGGER '**'

bind \cf t
bind \ef rgf
