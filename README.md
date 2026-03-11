# dotfiles
My new and improved system configuration for macOS and Linux

## Initial configuration

### macOS
Ensure `rcm` is installed, and fish set as the user shell.
```bash
fish_add_path -g "/opt/homebrew/bin"
RCRC=~/src/csutter/dotfiles/tag-workstation/rcrc rcup -vf
```

### devcontainer
My [`personal-setup` devcontainer feature][dc-feature] automatically sets up any
devcontainer-specific dotfiles by using the `rcrc` file in the `tag-devcontainer` tag.

[dc-feature]: https://github.com/csutter/devcontainer-features/tree/main/src/personal-setup
