# Agent Rules

## Purpose

This repository is a Homebrew tap for yowainwright CLI tools. Optimize changes for repeatable, validated, automergeable releases.

- Do not create files or directories before checking whether they already exist.
- Do not stage, commit, push, deploy, publish, or write through GitHub unless explicitly asked.
- Keep architecture notes in `tmp/*.md` aligned before commit-ready work.
- No snowflakes. Release code should follow a clear pattern from Homebrew and this tap's established template.

## Release Standard

- CLI packages live in `Formula/`.
- Do not add CLI casks. Reserve `Casks/` for app-style artifacts only.
- Do not keep formulae at the repository root.
- Prefer one standard binary formula lane for every CLI package.
- Each formula must have `desc`, `homepage`, `version`, `license`, platform URLs, non-empty `sha256` values, one `install` block, and a real `test do` block.
- One package release per pull request.

## Formula Shape

Use the same formula structure for prebuilt CLI releases:

- `on_macos` with `on_arm` and `on_intel`.
- `on_linux` with `on_arm` and `on_intel`.
- URLs point at the upstream GitHub release tag for the formula version.
- `bin.install` maps the downloaded asset to the stable command name.
- Tests execute the installed binary from `bin/`.

Avoid per-formula custom structure unless the exception is written down in the architecture plan before implementation.

## Automation Contract

- Upstream projects publish tagged releases and the complete asset matrix before this tap is updated.
- Automation updates the formula from release metadata and checksums.
- Automation opens the pull request.
- Required CI validates the pull request.
- Auto-merge merges only after required checks pass.

## Agent Release API

Do not hand-edit generated formula files or generated README sections.

Use repo scripts:

- `scripts/new-formula <package>`
- `scripts/update-formula <package> <version>`
- `scripts/validate-tap`

If a script fails, report the failed invariant and stop.

## Validation

Before changing release files, inspect:

- `git status --short`
- the target formula
- recent history for that formula
- any open release PRs for that package

Before a release PR is considered good, run the tap CI checks locally when feasible:

- formula style/audit
- formula install
- formula test
- no empty checksums
- no root-level formula drift
- no CLI cask drift

## Git

- Do not stage, commit, push, or write through GitHub unless the user explicitly asks for that Git action.
- Preserve unrelated worktree changes.
- Use plain filesystem moves for renames unless the user explicitly asks for `git mv`.

## Stop Conditions

- Before editing, name the exact Homebrew default, formula template, script, or release pattern being used.
- If you cannot name it, do not edit.
- Ask: "I'm at `<file>`, implementing `<specific release behavior>`. Which `<specific Homebrew/script/release pattern>` should I use?"
- Ask one buffer question only after the default path is exhausted.
- Do not invent one-off formula structures, casks for CLIs, bespoke release flows, or new architecture.
