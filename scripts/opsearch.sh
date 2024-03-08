op item list | fzf | awk '{print $1}' | xargs op item get --fields password | pbcopy
