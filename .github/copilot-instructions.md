# Dotfiles — Copilot Instructions

## Overview

This repo is managed by [RCM](https://github.com/thoughtbot/rcm), which symlinks files from this repo (and `dotfiles-private`) into `~`. Files live without a leading dot here; RCM adds it during install.

Most files in this repo are shared across environments at the repository root. Environment-specific files live under tag directories and are enabled by the matching `TAGS` entry in the active `rcrc`.

## RCM Conventions

- **File layout**: `bashrc` → `~/.bashrc`, `config/git/config` → `~/.config/git/config`, etc.
- **Tags**: Files under `tag-<name>/` are only installed when that tag is active in `~/.rcrc`.
- **Current tags**:
	- `tag-workstation/` — machine-local workstation config used on the Mac, including `rcrc`, Ghostty config, and Git config.
	- `tag-devcontainer/` — devcontainer-specific `rcrc`.
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
config/fish/              # Shared Fish conf.d snippets and functions
config/git/ignore         # Shared global git ignore patterns
config/mise.toml          # Shared mise configuration
tag-workstation/          # Mac/workstation-only files (rcrc, Ghostty, Git config)
tag-devcontainer/         # Devcontainer-only rcrc
```

## Key Files

- [config/fish/conf.d/env.fish](../config/fish/conf.d/env.fish) — core Fish environment settings
- [config/git/ignore](../config/git/ignore) — shared global git ignore patterns
- [tag-workstation/config/git/config](../tag-workstation/config/git/config) — workstation Git settings (identity, signing, delta, rebase)
- [tag-workstation/config/ghostty/config](../tag-workstation/config/ghostty/config) — workstation Ghostty config and theme selection
- [tag-workstation/rcrc](../tag-workstation/rcrc) — workstation bootstrap file enabling the `workstation` tag
- [tag-devcontainer/rcrc](../tag-devcontainer/rcrc) — devcontainer bootstrap file enabling the `devcontainer` tag
- [README.md](../README.md) — initial setup instructions for new machines

## Maintenance

When making structural changes to this repo (adding new tag directories, reorganising files, changing RCM settings, etc.), update this file to keep the information accurate.
