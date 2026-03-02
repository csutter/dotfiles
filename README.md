# dotfiles
My new and improved system configuration for macOS and Linux

## Initial configuration

### macOS
Ensure `rcm` is installed, and fish set as the user shell.
```bash
fish_add_path -g "/opt/homebrew/bin"
RCRC=~/src/csutter/dotfiles/tag-mac/rcrc rcup -vf
```
