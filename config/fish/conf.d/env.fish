# Core environment settings.

# Environment variables
set -gx EDITOR "code --wait"
set -gx VISUAL "code --wait"

# Keep user-local binaries first, matching prior Bash behavior.
if not contains -- "$HOME/.local/bin" $PATH
    set -gx PATH "$HOME/.local/bin" $PATH
end
