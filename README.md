# Homebrew Tap

A Homebrew tap for tools by [@yowainwright](https://github.com/yowainwright).

## Installation

```bash
brew tap yowainwright/tap
```

## Available Formulas

<!-- formulas:start -->
<!-- manual sections; scripts/validate-tap checks required install, usage, and links -->

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

<!-- DIU installation derived from brews/diu.json and Formula/diu.rb -->
Installs the prebuilt Apple Silicon or Intel Mac binary. Go is not required.

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

### [es-check](https://github.com/yowainwright/es-check)

Check JavaScript files against a requested ECMAScript version

Install [es-check](Formula/es-check.rb) | `Formula/es-check.rb`

```bash
brew install yowainwright/tap/es-check
```

Usage

```bash
es-check --help
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

### [fs-lint](https://github.com/yowainwright/fs-lint)

Enforce project file and folder structure.

Install [fs-lint](Formula/fs-lint.rb) | `Formula/fs-lint.rb`

```bash
brew install yowainwright/tap/fs-lint
```

Usage

```bash
fs-lint check --staged
```

---
### [legibility](https://github.com/yowainwright/legibility)

Configure existing Legibility tools for readable code.

Install [legibility](Formula/legibility.rb) | `Formula/legibility.rb`

```bash
brew install yowainwright/tap/legibility
```

Usage

```bash
legibility --help
```

---
### [src-lint](https://github.com/yowainwright/src-lint)

Enforce import boundaries across services and packages.

Install [src-lint](Formula/src-lint.rb) | `Formula/src-lint.rb`

```bash
brew install yowainwright/tap/src-lint
```

Usage

```bash
src-lint check . --strict
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
