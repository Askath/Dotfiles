
# #work setting

# Liquibase settings
# set -x DB_HOST 127.0.0.1
# set -x DB_PORT 3306
# set -x DB_SOURCE phoenix-database
# set -x DB_USER blackend
# set -x DB_PASSWORD blackend
# set -x KEYCLOAK_ISSUER_URI https://login.integration.entwickler.one/auth/realms/one
# set -x EXCHANGE_USER_UUID 01234567-0123-0123-0123-0123456789ab

# set PATH /opt/homebrew/opt/openjdk@17/bin $PATH
# set PATH /Users/taradruffel/lombok $PATH
# set -x JAVA_HOME /opt/homebrew/opt/openjdk@17
# set -x USERNAME taradruffel
# set -x isProduction false
# set -x FZF_COMPLETION_TRIGGER '**'
# set -x NODE_EXTRA_CA_CERTS /Users/taradruffel/Developer/java/phoenix-api/optadata-gruppe-ODA-DC1-CA.crt

#aliases
alias vimdiff='nvim -d'
alias ls="eza -al --git-repos"
alias cat='bat'
alias n='nvim'

alias chromedebug='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=9222'
alias gd='godot'
alias gde='godot -e'





#variables
set -x EDITOR nvim
set -g fish_escape_delay_ms 10
set -x PATH /opt/homebrew/bin $PATH
set -x JAVA_HOME /opt/homebrew/opt/openjdk@17
set -x USERNAME taradruffel
set -x OPENAI_API_KEY "op://Private/OpenAPI nvim/credential"
set -x LLVM_PATH /opt/homebrew/opt/llvm/bin
set -x DIGITALOCEAN_TOKEN "op://Private/digitalocean/credential"

#paths

set PATH Users/taradruffel/Library/Python/3.9/bin $PATH
set PATH /Users/taradruffel/scripts $PATH
set PATH /Users/taradruffel/nvim/bin $PATH
set PATH /Users/taradruffel/go/bin $PATH
set PATH /Users/taradruffel/.cargo/bin $PATH
set PATH /Users/tarardruffel/.tmux/plugins/t-smart-tmux-session-manager/bin $PATH
set PATH /opt/homebrew/opt/openjdk@17/bin $PATH

#my Tools
bind \ess 'sesh connect $(sesh list | fzf)' #(s)earch (session
bind \esf rgf #(s)earch (p)file
bind \ep ~/scripts/opsearch.sh #(s)earch (p)asswords
bind \esn 'glow ~/notes/' #(s)earch (n)otes
bind \ee nn #(e)xplorer

zoxide init fish | source
