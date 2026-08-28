cask "subbar" do
  version "1.0.32"
  sha256 "8be513f1dc7b7b87107eb70787c1d11c18e8d231afcb3f5d7e0be47e3d2875b6"

  url "https://cdn.jsdelivr.net/gh/MarcoLeongDev/homebrew-tap@v#{version}/dist/SubBar_#{version}_universal.dmg"
  name "SubBar"
  desc "Universal macOS menu-bar app to track Opencode Go and Minimax usage"
  homepage "https://github.com/MarcoLeongDev/subbar"
  app "SubBar.app"

  # SubBar is not Apple-notarized yet, and Homebrew 6 quarantines all cask
  # downloads unconditionally. Strip the quarantine post-install so the app
  # launches without a Gatekeeper prompt. (Personal tap only — the official
  # homebrew/cask tap forbids this stanza pattern.)
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/SubBar.app"]
  end
end
