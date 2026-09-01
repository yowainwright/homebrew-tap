# Homebrew Tap

A Homebrew tap for tools by [@yowainwright](https://github.com/yowainwright).

## Installation

```bash
brew tap yowainwright/tap
```

## Available Formulas

<!-- formulas:start -->
<!-- manual sections; scripts/validate-tap checks required install, usage, and links -->

### 1ls

A fast, lightweight JSON processor using familiar JavaScript syntax.

```bash
brew install yowainwright/tap/1ls

# Usage
echo '{"name": "hello"}' | 1ls '.name'
```

[Documentation](https://jeffry.in/1ls) · [GitHub](https://github.com/yowainwright/1ls) · `Formula/onels.rb`

### codependence

Enforce dependency version policy across projects, workspaces, and CI

```bash
brew install yowainwright/tap/codependence

# Usage
codependence --help
```

[Project](https://jeffry.in/codependence/) · [GitHub](https://github.com/yowainwright/codependence) · `Formula/codependence.rb`

### diu

Track package-manager and global CLI usage

```bash
brew install yowainwright/tap/diu

# Usage
diu setup
diu scan
```

[Project](https://github.com/yowainwright/diu) · `Formula/diu.rb`

### fjsf

A CLI tool for fuzzy searching and running scripts defined in JSON, TOML, and YAML config files.

```bash
brew install yowainwright/tap/fjsf

# Usage
fjsf
```

[GitHub](https://github.com/yowainwright/fjsf) · `Formula/fjsf.rb`

### pastoralist

Audit, secure, and clean up package manager overrides

```bash
brew install yowainwright/tap/pastoralist

# Usage
pastoralist --help
```

[Project](https://jeffry.in/pastoralist/) · [GitHub](https://github.com/yowainwright/pastoralist) · `Formula/pastoralist.rb`

### pre

A security proxy for package managers that intercepts and validates package installations.

```bash
brew install yowainwright/tap/pre

# Usage
pre install <package>
```

[GitHub](https://github.com/yowainwright/pre) · `Formula/pre.rb`

### tqs

Compile TypeScript to tiny (~1MB) standalone native binaries with QuickJS embedded. No Node.js, no V8, no runtime dependencies.

```bash
brew install yowainwright/tap/tqs

# Usage
tqs my-script.ts   # outputs ./my-script — a standalone native binary
```

[GitHub](https://github.com/yowainwright/tqs) · `Formula/tqs.rb`
<!-- formulas:end -->

## Updating

```bash
brew update
brew upgrade
```

## Issues

- **Formula issues**: [Open an issue here](https://github.com/yowainwright/homebrew-tap/issues)
- **Tool-specific bugs**: Report on the respective project repository
