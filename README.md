# Homebrew Tap

A Homebrew tap for tools by [@yowainwright](https://github.com/yowainwright).

## Installation

```bash
brew tap yowainwright/tap
```

## Available Formulas

| Formula | Description |
|---------|-------------|
| `1ls` | Lightweight JSON CLI with JavaScript syntax |
| `tqs` | Compile TypeScript to fast, small standalone native binaries via QuickJS |

### 1ls

A fast, lightweight JSON processor using familiar JavaScript syntax.

```bash
brew install yowainwright/tap/1ls

# Usage
echo '{"name": "hello"}' | 1ls '.name'
```

[Documentation](https://jeffry.in/1ls) · [GitHub](https://github.com/yowainwright/1ls)

### tqs

Compile TypeScript to tiny (~1MB) standalone native binaries with QuickJS embedded. No Node.js, no V8, no runtime dependencies.

```bash
brew install yowainwright/tap/tqs

# Usage
tqs my-script.ts   # outputs ./my-script — a standalone native binary
```

[GitHub](https://github.com/yowainwright/tqs)

## Updating

```bash
brew update
brew upgrade
```

## Issues

- **Formula issues**: [Open an issue here](https://github.com/yowainwright/homebrew-tap/issues)
- **Tool-specific bugs**: Report on the respective project repository
