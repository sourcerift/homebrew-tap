# Homebrew Tap for SourceRift

The official [Homebrew](https://brew.sh/) tap for SourceRift, a terminal workspace for navigating code. This repository hosts the casks, public release notes, and compiled release downloads.

## Installation

```bash
brew tap sourcerift/tap
brew trust --tap sourcerift/tap
brew install --cask sourcerift
```

Homebrew only loads casks from third-party taps you trust, so run `brew trust` once after tapping.

SourceRift is signed with a Developer ID and notarized by Apple.

## Available casks

| Cask | Description | Channel |
|------|-------------|---------|
| `sourcerift` | SourceRift stable releases | Stable |
| `sourcerift@beta` | The newest build: pre-releases, or the stable release when it is newer | Alpha/Beta/RC |

Both casks install `SourceRift.app`, so install one or the other. To switch, uninstall the one you have first. `sourcerift@beta` was called `sourcerift-beta`; Homebrew moves existing installs to the new name.

## Updating

```bash
brew upgrade --cask sourcerift        # or: sourcerift@beta
```

## Uninstalling

```bash
brew uninstall --cask sourcerift      # or: sourcerift@beta
brew untap sourcerift/tap
```

## Requirements

- macOS Tahoe 26 or later
- Apple Silicon (arm64)

## Issues

Open an issue in this repository for problems with installation, the cask, or SourceRift itself.
