# dotfiles
My new and improved system configuration for macOS and Linux

## Initial configuration
Create a `~/.rcrc` with the appropriate contents, for example:

### macOS
```bash
EXCLUDES="README.md"
TAGS="mac"
DOTFILES_DIRS="~/src/csutter/dotfiles ~/src/csutter/dotfiles-private"
```

Run `rcup -vf` to install.
