# Global fish configuration
## Editors
set -gx EDITOR code --wait
set -gx VISUAL code --wait

# No welcome message
set -g fish_greeting

# Prompt colors
set -g fish_color_cwd brwhite --bold
set -g fish_color_user brwhite

# Git prompt settings
set -g __fish_git_prompt_showdirtystate 1
set -g __fish_git_prompt_showuntrackedfiles 1
set -g __fish_git_prompt_showstashstate 1

set -g __fish_git_prompt_color_branch normal
set -g __fish_git_prompt_color_stagedstate green
set -g __fish_git_prompt_color_dirtystate yellow
set -g __fish_git_prompt_color_untrackedfiles red
set -g __fish_git_prompt_color_stashstate magenta

set -g __fish_git_prompt_char_stagedstate '+'
set -g __fish_git_prompt_char_dirtystate '*'
set -g __fish_git_prompt_char_untrackedfiles '?'
set -g __fish_git_prompt_char_stashstate '[S]'
