# shellcheck shell=bash source=/dev/null

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Source individual configuration files
for f in "${XDG_CONFIG_HOME:-$HOME/.config}"/bash/*.sh; do
  [ -r "$f" ] && source "$f"
done
unset f

# Set up environment variables
export PATH="$HOME/.local/bin:$PATH"
export EDITOR="code --wait"
export VISUAL="code --wait"

# Set up history options
HISTSIZE=10000
HISTFILESIZE=20000
HISTCONTROL=ignoreboth:erasedups
shopt -s histappend
