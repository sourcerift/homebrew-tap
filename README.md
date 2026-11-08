# Homebrew Tap for SourceRift

This is the official [Homebrew](https://brew.sh/) tap for [SourceRift](https://github.com/sourcerift/sourcerift).

## Installation

```bash
brew tap sourcerift/tap
brew install --cask sourcerift-beta
```

## Available Casks

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

- macOS Sequoia (15.0) or later
- Apple Silicon (arm64)

## Issues

For issues with the tap or cask definitions, please open an issue in this repository.

For issues with SourceRift itself, please open an issue in the [main repository](https://github.com/sourcerift/sourcerift/issues).
