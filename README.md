# Homebrew Tap

A Homebrew tap for tools by [@yowainwright](https://github.com/yowainwright).

## Installation

```bash
brew tap yowainwright/tap
```

## Available Formulas

<!-- formulas:start -->
<!-- manual sections; scripts/validate-tap checks required install, usage, and links -->

### [1ls](https://github.com/yowainwright/1ls)

A fast, lightweight JSON processor using familiar JavaScript syntax.

Install [1ls](Formula/onels.rb) | `Formula/onels.rb`

```bash
brew install yowainwright/tap/1ls
```

Usage

```bash
echo '{"name": "hello"}' | 1ls '.name'
```

---

### [codependence](https://jeffry.in/codependence/)

Enforce dependency version policy across projects, workspaces, and CI

Install [codependence](Formula/codependence.rb) | `Formula/codependence.rb`

```bash
brew install yowainwright/tap/codependence
```

Usage

```bash
codependence --help
```

---

### [diu](https://github.com/yowainwright/diu)

Track package-manager and global CLI usage

Install [diu](Formula/diu.rb) | `Formula/diu.rb`

```bash
brew install yowainwright/tap/diu
```

Usage

```bash
diu setup
diu scan
```

---

### [fjsf](https://github.com/yowainwright/fjsf)

A CLI tool for fuzzy searching and running scripts defined in JSON, TOML, and YAML config files.

Install [fjsf](Formula/fjsf.rb) | `Formula/fjsf.rb`

```bash
brew install yowainwright/tap/fjsf
```

Usage

```bash
fjsf
```

---

### [pastoralist](https://jeffry.in/pastoralist/)

Audit, secure, and clean up package manager overrides

Install [pastoralist](Formula/pastoralist.rb) | `Formula/pastoralist.rb`

```bash
brew install yowainwright/tap/pastoralist
```

Usage

```bash
pastoralist --help
```

---

### [pre](https://github.com/yowainwright/pre)

A security proxy for package managers that intercepts and validates package installations.

Install [pre](Formula/pre.rb) | `Formula/pre.rb`

```bash
brew install yowainwright/tap/pre
```

Usage

```bash
pre install <package>
```

---

### [tqs](https://github.com/yowainwright/tqs)

Compile TypeScript to tiny (~1MB) standalone native binaries with QuickJS embedded. No Node.js, no V8, no runtime dependencies.

Install [tqs](Formula/tqs.rb) | `Formula/tqs.rb`

```bash
brew install yowainwright/tap/tqs
```

Usage

```bash
tqs my-script.ts   # outputs ./my-script — a standalone native binary
```

---
<!-- formulas:end -->

## Updating

```bash
brew update
brew upgrade
```

## Issues

- **Formula issues**: [Open an issue here](https://github.com/yowainwright/homebrew-tap/issues)
- **Tool-specific bugs**: Report on the respective project repository
