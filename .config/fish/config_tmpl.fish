# brew install caarlos0/tap/timer
# brew install terminal-notifier

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
alias ls="eza -al --git-repos"
alias cat='bat'
alias n='nvim'

alias chromedebug='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=9222'
alias gd='godot'
alias gde='godot -e'



alias work="timer 60m && terminal-notifier -message 'Pomodoro'\
        -title 'Work Timer is up! Take a Break 😊'\
        -appIcon '~/Pictures/pumpkin.png'\
        -sound Crystal"

alias rest="timer 10m && terminal-notifier -message 'Pomodoro'\
        -title 'Break is over! Get back to work 😬'\
        -appIcon '~/Pictures/pumpkin.png'\
        -sound Crystal"


#variables
set -x EDITOR nvim
set -g fish_escape_delay_ms 10
set -x PATH /opt/homebrew/bin $PATH
set -x JAVA_HOME /opt/homebrew/opt/openjdk@17
set -x USERNAME taradruffel
set -x OPENAI_API_KEY "op://Private/OpenAPI nvim/credential"
set -x LLVM_PATH /opt/homebrew/opt/llvm/bin

#paths
set PATH /Users/taradruffel/scripts $PATH
set PATH /Users/taradruffel/nvim/bin $PATH
set PATH /Users/taradruffel/.cargo/bin $PATH
set PATH /Users/tarardruffel/.tmux/plugins/t-smart-tmux-session-manager/bin $PATH
set PATH /opt/homebrew/opt/openjdk@17/bin $PATH

#my Tools
bind \et 'sesh connect $(sesh list | fzf)'
bind \ef rgf
bind \ep ~/scripts/opsearch.sh
bind \en 'glow ~/notes/'

zoxide init fish | source
