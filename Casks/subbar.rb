cask "subbar" do
  version "1.0.35"
  sha256 "d4d27ad42a5cb74db2f435d06c059ac4d5455b0cce2e49c35eb6c18dd9d21ba6"

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
