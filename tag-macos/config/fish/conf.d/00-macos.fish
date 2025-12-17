# macOS-specific fish configuration
## Homebrew
set -gx PATH /opt/homebrew/bin $PATH
set -gx HOMEBREW_NO_ANALYTICS 1

## 1Password SSH agent
set -gx SSH_AUTH_SOCK "$HOME/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"
