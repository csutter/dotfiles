# shellcheck shell=bash source=/dev/null

# Set up bash completion
for f in \
  /usr/share/bash-completion/bash_completion \
  /opt/homebrew/etc/profile.d/bash-completion.bash; do
  if [ -f "$f" ]; then
    # shellcheck source=/dev/null
    source "$f"
    break
  fi
done
unset f
