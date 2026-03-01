# shellcheck shell=bash source=/dev/null

# Source git prompt
for f in \
  /usr/share/git-core/contrib/completion/git-prompt.sh \
  /usr/lib/git-core/git-sh-prompt \
  /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh \
  /opt/homebrew/etc/bash_completion.d/git-prompt.sh \
  /usr/local/etc/bash_completion.d/git-prompt.sh; do
  if [ -f "$f" ]; then
    # shellcheck source=/dev/null
    source "$f"
    break
  fi
done
unset f

# Git prompt settings
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWSTASHSTATE=1

# Bash prompt settings
PROMPT_DIRTRIM=2

# Set bash prompt to include git branch information if available
if [ "$(type -t __git_ps1)" = "function" ]; then
  PS1='\u@\h:\[\033[1m\]\w\[\033[0m\]$(__git_ps1 " (%s)")\$ '
else
  PS1='\u@\h:\[\033[1m\]\w\[\033[0m\]\$ '
fi
