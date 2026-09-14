# homebrew-tap

A [Homebrew](https://brew.sh) tap for [sofired](https://github.com/sofired)'s
command-line tools.

## Usage

```sh
brew tap sofired/tap
brew install <formula>
```

`brew tap sofired/tap` is a one-time step; afterwards `brew upgrade` tracks new
releases of anything installed from here.

## Formulae

| Formula | Description |
| --- | --- |
| [`composemux`](Formula/composemux.rb) | Read-only terminal UI for Docker Compose logs |

Each formula is updated automatically when its upstream project cuts a release.
Please report issues with a tool itself in that tool's own repository, not here.
