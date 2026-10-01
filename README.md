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

### [shellcheck-legibility](https://github.com/yowainwright/shellcheck_legibility)

Shell legibility checks that sit beside ShellCheck.

Install [shellcheck-legibility](Formula/shellcheck-legibility.rb) | `Formula/shellcheck-legibility.rb`

```bash
brew install yowainwright/tap/shellcheck-legibility
```

Usage

```bash
shellcheck-legibility check .
```

---

<!-- formulas:end -->

## Updating

```bash
brew update
brew upgrade
```

## Configure a new package

Run guided setup from this checkout (requires Bash and Ruby):

```bash
scripts/configure-package
```

Each question has a matching flag. Supply any flags to skip those questions;
press Enter to accept an offered default. For example:

```bash
scripts/configure-package example-tool \
  --repo yowainwright/example-tool \
  --desc "Example command-line tool" \
  --license MIT \
  --version 1.2.3
```

Use `--name` instead of the positional package name if preferred. `--archive`
selects `.tar.gz` assets; `--no-archive` selects raw binaries. `--help` lists all
flags. Without a terminal, required values must be supplied as flags and optional
values use their defaults.

Package names use lowercase letters, digits, and single hyphens, starting with a letter.
Versions omit the `v` tag prefix. The command refuses existing inventory or formula
files and creates `brews/<package>.json` with `managed: false` and `readme: false`.

The default release assets are `<package>-darwin-arm64`, `<package>-darwin-amd64`,
`<package>-linux-arm64`, and `<package>-linux-amd64` under the upstream `v<version>`
tag. `--archive` adds `.tar.gz`; archives must contain the command, `LICENSE`, and
`LICENSES`, as expected by the shared formula template.

Verify that all four assets are published and the command's `--version` output
matches the package version before setting `managed: true`. The setup command
prints the existing generation, validation, and Homebrew test commands to run.
These commands link this checkout into Homebrew's tap directory before generating
the formula. They stop if `yowainwright/tap` already points at another checkout;
use that checkout or resolve the existing tap location first. The link lets
Homebrew see newly generated files before they are committed.
It does not download assets or generate a formula. Add the README package section
and set `readme: true` when ready to list it. With `--command`, use the package
name in `brew install` and the command name for the heading and usage examples.

Run the setup tests with `bash scripts/test-configure-package`.

## Issues

- **Formula issues**: [Open an issue here](https://github.com/yowainwright/homebrew-tap/issues)
- **Tool-specific bugs**: Report on the respective project repository
