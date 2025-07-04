# Homebrew Tap for Velo

This is the official Homebrew tap for [Velo](https://github.com/dimaosipa/velocity), a Swift-based drop-in replacement for Homebrew.

## 🔧 Installation

```bash
brew tap dimaosipa/brew
brew install dimaosipa/brew/velo
```

## About Velo

Velo is a high-performance package manager for macOS that provides a drop-in replacement for Homebrew. It's written in Swift and optimized for Apple Silicon Macs.

### Features

- **Fast**: Written in Swift with parallel downloads and async I/O
- **Drop-in Compatible** — Works with existing Homebrew formulae
- **Sandboxed** — No `sudo`, no system interference; operates entirely in `~/.velo/`
- **Minimalist Footprint** — Leaves system directories untouched
- **No Ruby Runtime** — Parses .rb formulae without executing them; effectively treats Ruby-based formulae as declarative specs

### Requirements

- macOS 12.0 or later
- Apple Silicon (M1/M2/M3) Mac

## Usage

After installation, you can use `velo` just like you would use `brew`:

```bash
velo install wget
velo search node
velo update
velo doctor
```

## Support

For issues with the Velo package manager itself, please visit the [main repository](https://github.com/dimaosipa/velocity).

For issues with this Homebrew tap, please open an issue in this repository.