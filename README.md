# OPDhaker/homebrew-tap

Homebrew casks for [jingle](https://github.com/OPDhaker/jingle), which plays a producer tag when you `git commit` or `git push`.

```sh
brew trust opdhaker/tap                       # once; Homebrew 7 asks you to trust third-party taps
brew install OPDhaker/tap/jingle              # the CLI (macOS and Linux)
brew install --cask OPDhaker/tap/jingle-app   # the menu-bar app (macOS; also installs the CLI)
```

The casks are written by jingle's release workflow on every `v*` tag. Don't edit them by hand; the next release overwrites them.
