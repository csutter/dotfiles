# shellcheck shell=bash

# Check if fzf is installed
if ! command -v fzf >/dev/null 2>&1; then
  return
fi

# Set up fzf key bindings
for f in \
  /opt/homebrew/opt/fzf/shell/key-bindings.bash \
  /usr/local/opt/fzf/shell/key-bindings.bash \
  /usr/share/doc/fzf/examples/key-bindings.bash \
  /usr/share/fzf/shell/key-bindings.bash; do
  if [ -f "$f" ]; then
    source "$f"
    break
  fi
done

# Set up fzf completion
for f in \
  /opt/homebrew/opt/fzf/shell/completion.bash \
  /usr/local/opt/fzf/shell/completion.bash \
  /usr/share/bash-completion/completions/fzf \
  /usr/share/fzf/shell/completion.bash; do
  if [ -f "$f" ]; then
    source "$f"
    break
  fi
done
unset f

# Default options
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border --inline-info'

# Use fd instead of find if available
if command -v fd >/dev/null 2>&1; then
  export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
fi
