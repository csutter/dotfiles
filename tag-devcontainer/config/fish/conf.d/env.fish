# Suppress the built-in welcome message
set -g fish_greeting ''

# Set up editor
set -gx EDITOR "code --wait"
set -gx VISUAL "code --wait"

# Set up local tools folder
fish_add_path $HOME/.local/bin
