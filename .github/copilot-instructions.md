# Dotfiles — Copilot Instructions

## Overview

This repo is managed by [RCM](https://github.com/thoughtbot/rcm), which symlinks files from this repo (and `dotfiles-private`) into `~`. Files live without a leading dot here; RCM adds it during install.

Environment-specific files live under tag directories and are enabled by the matching `TAGS` entry in the active `rcrc`. There are currently no shared files besides `config/git/ignore`; most config is tag-specific.

## RCM Conventions

- **File layout**: `bashrc` → `~/.bashrc`, `config/git/config` → `~/.config/git/config`, etc.
- **Tags**: Files under `tag-<name>/` are only installed when that tag is active in `~/.rcrc`.
- **Current tags**:
	- `tag-macos/` — macOS workstation config: Zsh, Ghostty, Git config, SSH, Brewfile.
	- `tag-devcontainer/` — devcontainer-specific config: Fish shell, `rcrc`, and Git delta pager.
- **`rcrc` setup**: macOS uses a manually created `~/.rcrc` (see README); devcontainers use `tag-devcontainer/rcrc`.
- **Two repos**: `~/src/csutter/dotfiles` (this, public) and `~/src/csutter/dotfiles-private` (non-public, for sensitive configuration). Both would normally be listed in `DOTFILES_DIRS` in `~/.rcrc` and RCM merges them transparently. Prefer `dotfiles-private` for sensitive configuration.

## Workflow for File Changes

| Action | Steps |
|---|---|
| Add or rename a file | Run `rcup` after — the symlink won't exist until then |
| Remove a file or old name (rename) | Manually delete the stale symlink from `~` (e.g. `rm ~/.oldfile`) |
| Edit an existing symlinked file | Changes are live immediately — no `rcup` needed |

Consult the active `rcrc` to understand the current tag and directory settings on a specific machine.

## Structure

```
config/git/ignore                       # Shared global git ignore patterns
tag-macos/                              # macOS-only: Zsh, Ghostty, Git, SSH, Brewfile
tag-devcontainer/                       # Devcontainer-only: Fish, rcrc, Git delta config
```

## Key Files

- [config/git/ignore](../config/git/ignore) — shared global git ignore patterns
- [tag-macos/zshrc](../tag-macos/zshrc) — macOS Zsh config (env, prompt, completions)
- [tag-macos/config/git/config](../tag-macos/config/git/config) — macOS Git settings (identity, signing, rebase); uses `[include]` for device-specific and devcontainer overrides
- [tag-macos/config/ghostty/config](../tag-macos/config/ghostty/config) — Ghostty terminal config and theme selection
- [tag-macos/config/Brewfile](../tag-macos/config/Brewfile) — Homebrew dependencies for macOS
- [tag-macos/ssh/config](../tag-macos/ssh/config) — SSH config (Secretive agent)
- [tag-devcontainer/config/fish/conf.d/env.fish](../tag-devcontainer/config/fish/conf.d/env.fish) — devcontainer Fish environment settings
- [tag-devcontainer/config/git/devcontainer](../tag-devcontainer/config/git/devcontainer) — devcontainer Git overrides (delta pager)
- [tag-devcontainer/rcrc](../tag-devcontainer/rcrc) — devcontainer bootstrap file enabling the `devcontainer` tag
- [README.md](../README.md) — initial setup instructions for new machines

## Maintenance

When making structural changes to this repo (adding new tag directories, reorganising files, changing RCM settings, etc.), update this file to keep the information accurate.
