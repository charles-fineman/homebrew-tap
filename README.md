# homebrew-tap

A [Homebrew](https://brew.sh) tap for [sofired](https://github.com/sofired)'s
command-line tools.

## Usage

```sh
brew install sofired/tap/<formula>
```

Use the full name. Homebrew 6+ [does not load a third-party tap until it is
trusted](https://docs.brew.sh/Tap-Trust), and a qualified `brew install` taps
this repository and trusts that one formula in a single step. A bare
`brew tap sofired/tap` fails until you run `brew trust sofired/tap` first; do
that instead if you would rather trust the whole tap. Either way, `brew upgrade`
tracks new releases of anything installed from here.

## Formulae

| Formula | Description |
| --- | --- |
| [`composemux`](Formula/composemux.rb) | Read-only terminal UI for Docker Compose logs |

Each formula is updated automatically when its upstream project cuts a release.
Please report issues with a tool itself in that tool's own repository, not here.
