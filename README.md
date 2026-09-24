# ryanstarfox/tap

Homebrew tap for [MacPower](https://github.com/RyanStarFox/MacPower).

```bash
brew install --cask --no-quarantine ryanstarfox/tap/macpower
```

`--no-quarantine` is required because the disk image is ad-hoc signed and not notarized. Official `homebrew/cask` does not accept that install path.

`Casks/macpower.rb` tracks the latest GitHub Release. The `Bump MacPower cask` workflow updates the version and checksum after a new release.
