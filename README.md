# homebrew-tap

A [Homebrew](https://brew.sh) tap for [sofired](https://github.com/sofired)'s
command-line tools.

## Usage

```sh
brew install sofired/tap/<formula>
```

Use the full name: it is what lets Homebrew 6+ trust the formula without a
separate `brew tap` and `brew trust` step. `brew upgrade` then tracks new
releases of anything installed from here.

## Formulae

| Formula | Description |
| --- | --- |
| [`composemux`](Formula/composemux.rb) | Read-only terminal UI for Docker Compose logs |

Each formula is updated automatically when its upstream project cuts a release.
Please report issues with a tool itself in that tool's own repository, not here.

## Bottles

Every pull request that changes a formula builds and tests it on macOS arm64,
Linux x86-64 and Linux ARM64, and uploads the resulting bottles as workflow
artifacts. Once the checks are green, run the **brew pr-pull** workflow from the
Actions tab, or:

```sh
gh workflow run publish.yml --repo sofired/homebrew-tap \
  -f pull_request=<number> -f head_sha=<reviewed-commit-SHA>
```

`head_sha` is required and must be the exact commit you reviewed; publishing
fails if the PR head has moved since, so a later push can't sneak an unreviewed
commit into the bottles.

That uploads the bottles to the [`bottles` release](https://github.com/sofired/homebrew-tap/releases/tag/bottles)
on this repo and pushes the PR's commits plus the `bottle do` block to `main`.
The composemux release workflow does this itself for its own version bumps.
