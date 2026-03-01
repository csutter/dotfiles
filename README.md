# dotfiles
My new and improved system configuration for macOS and Linux

## Initial configuration
Create a `~/.rcrc` with the appropriate contents, for example:

### Linux workstation
```bash
EXCLUDES="README.md"
TAGS="linux-workstation"
DOTFILES_DIRS="~/src/csutter/dotfiles ~/src/csutter/dotfiles-private"
```

### macOS workstation
```bash
EXCLUDES="README.md"
TAGS="macos-workstation"
UNDOTTED="Library"
DOTFILES_DIRS="~/src/csutter/dotfiles ~/src/csutter/dotfiles-private"
```

Run `rcup -vf` to install.
