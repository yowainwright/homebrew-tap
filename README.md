# Homebrew Tap

A Homebrew tap for tools by [@yowainwright](https://github.com/yowainwright).

## Installation

```bash
brew tap yowainwright/tap
```

## Available Formulas

<!-- formulas:start -->

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

### [legibility-golangci-lint](https://github.com/yowainwright/go-lint-legibility)

Syntax-only Go readability rules for golangci-lint.

Install [legibility-golangci-lint](Formula/golangci-lint-legibility.rb) | `Formula/golangci-lint-legibility.rb`

```bash
brew install yowainwright/tap/golangci-lint-legibility
```

Usage

```bash
legibility-golangci-lint run ./...
```

---
<!-- formulas:end -->

## Updating

```bash
brew update
brew upgrade
```

## Configure a new package

To create a new package simply run

```bash
scripts/configure-package
```

This will walk you through the steps.

### Options

You can also use options to make setting up a new package faster/easier.

#### `--name`

Sets the package name. You can also provide it as the first positional argument.
Names use lowercase letters, digits, and single hyphens, starting with a letter.

Run:

```sh
scripts/configure-package --name example-tool
```

Output:

```diff
+ "name": "example-tool",
+ "class_name": "ExampleTool",
```

#### `--repo`

Sets the upstream GitHub repository in `owner/repo` form.

Run:

```sh
scripts/configure-package example-tool --repo yowainwright/example-tool
```

Output:

```diff
+ "repo": "yowainwright/example-tool",
```

#### `--desc`

Sets the short package description.

Run:

```sh
scripts/configure-package example-tool --desc "Example command-line tool"
```

Output:

```diff
+ "desc": "Example command-line tool",
```

#### `--license`

Sets the SPDX license identifier. For MIT, use `MIT` for the
[MIT License](https://opensource.org/license/mit).

Run:

```sh
scripts/configure-package example-tool --license MIT
```

Output:

```diff
+ "license": "MIT",
```

#### `--version`

Sets the release version without the leading `v` used in the Git tag.

Run:

```sh
scripts/configure-package example-tool --version 1.2.3
```

Output:

```diff
+ "version": "1.2.3",
```

#### `--command`

Sets the installed command name. It defaults to the package name.

Run:

```sh
scripts/configure-package example-tool --command example
```

Output:

```diff
+ "command": "example",
```

#### `--homepage`

Sets the project homepage. It defaults to the GitHub repository URL.

Run:

```sh
scripts/configure-package example-tool --homepage https://example.com
```

Output:

```diff
+ "homepage": "https://example.com",
```

#### `--asset-prefix`

Sets the prefix used in release asset names. It defaults to the package name.

Run:

```sh
scripts/configure-package example-tool --asset-prefix example
```

Output:

```diff
+ "asset_prefix": "example",
```

#### `--archive`

Uses `.tar.gz` release assets instead of raw binaries. Each archive must contain
the command, `LICENSE`, and `LICENSES` for the shared formula template.

Run:

```sh
scripts/configure-package example-tool --archive
```

Output:

```diff
+ "archive": true
```

#### `--no-archive`

Uses raw binary release assets. This is the default; the inventory has no
`archive` field.

Run:

```sh
scripts/configure-package example-tool --no-archive
```

Output:

```diff
  "asset_prefix": "example-tool",
  "managed": false,
```

#### `--help`

Lists the command's options. `-h` is an alias.

Run:

```sh
scripts/configure-package --help
```

Output:

```diff
+ Usage: scripts/configure-package [package] [options]
+ Options:
+   --name <package>       Package name (or use the positional argument)
+   ...
```

## Development checks

Install the lint tools with `brew bundle install --no-upgrade`, then run `ruby scripts/lint`.
CI runs the same command in the required `validate` job.

The checks cover ShellCheck, shfmt, shellcheck-legibility, Codespell,
markdownlint-cli2, RuboCop, actionlint, and Homebrew formula style.
Extensionless shell and Ruby scripts are included. Shell formatting uses
the two-space indentation in `.editorconfig`.

Run `scripts/validate-tap --strict` for inventory and release-shape validation.
Release changes also require Homebrew audit, installation, and formula tests.

## Issues

- **Formula issues**: [Open an issue here](https://github.com/yowainwright/homebrew-tap/issues)

## LICENSE

Licensed under the [MIT License](LICENSE).
