# macOS Homebrew setup

if not contains -- /opt/homebrew/bin $PATH
    set -gx PATH /opt/homebrew/bin $PATH
end

set -gx HOMEBREW_NO_ANALYTICS 1
