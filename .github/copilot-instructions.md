# Dotfiles — Copilot Instructions

## Overview

This repo is managed by [RCM](https://github.com/thoughtbot/rcm), which symlinks files from this repo (and `dotfiles-private`) into `~`. Files live without a leading dot here; RCM adds it during install.

## RCM Conventions

- **File layout**: `bashrc` → `~/.bashrc`, `config/git/config` → `~/.config/git/config`, etc.
- **Tags**: Files under `tag-<name>/` are only installed when that tag is active in `~/.rcrc`. macOS machines use the `mac` tag.
- **Two repos**: `~/src/csutter/dotfiles` (this, public) and `~/src/csutter/dotfiles-private` (non-public, for sensitive configuration). Both would normally be listed in `DOTFILES_DIRS` in `~/.rcrc` and RCM merges them transparently. Prefer `dotfiles-private` for sensitive configuration.

## Workflow for File Changes

| Action | Steps |
|---|---|
| Add or rename a file | Run `rcup` after — the symlink won't exist until then |
| Remove a file or old name (rename) | Manually delete the stale symlink from `~` (e.g. `rm ~/.oldfile`) |
| Edit an existing symlinked file | Changes are live immediately — no `rcup` needed |

Consult `~/.rcrc` to understand current tag/directory settings on a specific machine.

## Structure

```
config/fish/      # Fish conf.d snippets (env, abbr)
config/git/       # Git config and global ignore
tag-mac/          # macOS-only config (Homebrew, SSH agent, Ghostty, Fish overrides)
```

## Key Files

- [config/fish/conf.d/env.fish](../config/fish/conf.d/env.fish) — core Fish environment settings
- [config/git/config](../config/git/config) — git settings (delta pager, SSH signing, rebase)
- [README.md](../README.md) — initial setup instructions for new machines

## Maintenance

When making structural changes to this repo (adding new tag directories, reorganising files, changing RCM settings, etc.), update this file to keep the information accurate.
