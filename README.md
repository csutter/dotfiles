# dotfiles
My new and improved system configuration for macOS and Linux

## Initial configuration

### macOS
Create an appropriate `rcm` configuration file at `~/.rcrc`, for example:
```bash
DOTFILES_DIRS="~/src/csutter/dotfiles ~/src/csutter/dotfiles-private"
EXCLUDES="README.md"
TAGS="macos"
HOSTNAME="set-to-device-name"
```

Install [Homebrew][homebrew], then bootstrap local dependencies (including `rcm`) and set up
dotfiles:
```bash
export PATH="/opt/homebrew/bin:$PATH"
brew bundle --file=~/src/csutter/dotfiles/tag-macos/config/Brewfile
rcup -vf
```

### devcontainer
My [`personal-setup` devcontainer feature][dc-feature] automatically sets up any
devcontainer-specific dotfiles by using the `rcrc` file in the `tag-devcontainer` tag.

[dc-feature]: https://github.com/csutter/devcontainer-features/tree/main/src/personal-setup
[homebrew]: https://brew.sh
