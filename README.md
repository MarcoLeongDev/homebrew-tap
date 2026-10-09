# MarcoLeongDev Homebrew Tap

Personal Homebrew tap for:

- [SubBar](https://github.com/MarcoLeongDev/subbar) — a macOS menu-bar app
  that tracks your OpenCode Go & Minimax usage (`brew install --cask subbar`).
- [Harness Launcher](https://github.com/MarcoLeongDev/harness-launcher) —
  a universal macOS menu-bar app to install, version and run the DeepSeek
  Harness engine (`brew install --cask harness-launcher`).
- [Tuneshell](https://github.com/MarcoLeongDev/tuneshell) — a universal
  macOS desktop app for local AI song generation (YuE2 on MLX)
  (`brew install --cask tuneshell`).

## Install

```bash
brew tap MarcoLeongDev/tap
brew trust MarcoLeongDev/tap
brew install --cask harness-launcher
brew install --cask tuneshell
```

China (中国大陆) users: SubBar is served via jsDelivr's global CDN, so it
installs out of the box. Harness Launcher and Tuneshell download straight
from their GitHub release pages (or grab the `.dmg` from the Gitee mirror's
Releases page). Prefer tapping via Gitee?

```bash
brew tap MarcoLeongDev/tap https://gitee.com/MarcoLeongDev/homebrew-tap
brew install --cask harness-launcher
brew install --cask tuneshell
```
