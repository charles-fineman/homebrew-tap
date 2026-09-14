# homebrew-tap

Homebrew tap for [composemux](https://github.com/sofired/composemux) — a
read-only terminal UI for Docker Compose logs.

## Install

```sh
brew tap sofired/tap
brew install composemux
```

`brew tap sofired/tap` is a one-time step; afterwards `brew upgrade composemux`
tracks new releases.

## Formulae

- [`composemux`](Formula/composemux.rb) — builds from source with `cargo`.

The formula is updated automatically when composemux cuts a release. Report
issues with composemux itself in the
[main repository](https://github.com/sofired/composemux/issues), not here.
