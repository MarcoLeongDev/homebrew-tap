cask "subbar" do
  version "1.0.42"
  sha256 "9375f0d18aaa0e597e1a03c859c37431254cf2febdaa67c95906a41fa5dac474"

  url "https://cdn.jsdelivr.net/gh/MarcoLeongDev/homebrew-tap@v#{version}/dist/SubBar_#{version}_universal.dmg"
  name "SubBar"
  desc "Universal macOS menu-bar app to track Opencode Go and Minimax usage"
  homepage "https://github.com/MarcoLeongDev/subbar"
  app "SubBar.app"

  # SubBar is not Apple-notarized yet, and Homebrew 6 quarantines all cask
  # downloads unconditionally. Strip the quarantine post-install so the app
  # launches without a Gatekeeper prompt. (Personal tap only — the official
  # homebrew/cask tap forbids this stanza pattern.)
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/SubBar.app"]
  end
end
