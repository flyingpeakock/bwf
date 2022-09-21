# Do nothing if bw is not installed
(( ${+commands[bw]} )) || echo "bitwarden plugin: bitwarden cli is not installed" && return

# Load bw completion
# eval "$(bw completion --shell zsh)"
# compdef _bw bw

source "${0:a:h}/bwf"
