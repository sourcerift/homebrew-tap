# Homebrew Tap for SourceRift

The official [Homebrew](https://brew.sh/) tap for SourceRift, a terminal workspace for navigating code. This repository hosts the casks, public release notes, and compiled release downloads.

## Installation

```bash
brew tap sourcerift/tap
brew trust --tap sourcerift/tap
brew install --cask sourcerift-beta
```

Homebrew only loads casks from third-party taps you trust, so run `brew trust` once after tapping.

Preview builds are not notarized yet. The first time you open SourceRift, macOS blocks it. Choose **Open Anyway** in **System Settings → Privacy & Security**, or remove the quarantine attribute:

```bash
xattr -dr com.apple.quarantine /Applications/SourceRift.app
```

## Available casks

| Cask | Description | Channel |
|------|-------------|---------|
| `sourcerift-beta` | SourceRift pre-release builds | Alpha/Beta/RC |

## Updating

```bash
brew upgrade --cask sourcerift-beta
```

## Uninstalling

```bash
brew uninstall --cask sourcerift-beta
brew untap sourcerift/tap
```

## Requirements

- macOS Tahoe 26 or later
- Apple Silicon (arm64)

## Issues

Open an issue in this repository for problems with installation, the cask, or SourceRift itself.
