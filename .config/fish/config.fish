
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

#variables 
set -x EDITOR "emacsclient -c"
set -g fish_escape_delay_ms 10
set -x PATH ~/.emacs.d/bin $PATH
set -x PATH /opt/homebrew/bin $PATH
set -x LLVM_PATH /opt/homebrew/opt/llvm/bin
set -x PATH /opt/homebrew/opt/grep/libexec/gnubin $PATH

zoxide init fish | source
