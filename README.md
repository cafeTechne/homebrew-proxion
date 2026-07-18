# Proxion Homebrew Tap

Official [Homebrew](https://brew.sh) tap for [Proxion Messenger](https://github.com/cafeTechne/proxion-messenger) —
a sovereign messenger built on the Solid Protocol.

## Install

```sh
brew install cafeTechne/proxion/proxion
```

Or tap first, then install:

```sh
brew tap cafeTechne/proxion
brew install --cask proxion
```

Proxion is intentionally not signed by Apple (no vendor gatekeeping), so macOS
shows a one-time caution prompt on first launch: right-click the app →
**Open**. Every release ships checksums and build-provenance attestations —
see [VERIFYING.md](https://github.com/cafeTechne/proxion-messenger/blob/main/docs/VERIFYING.md).

The cask is updated automatically by the
[release workflow](https://github.com/cafeTechne/proxion-messenger/blob/main/.github/workflows/homebrew.yml)
when a new version is published.
