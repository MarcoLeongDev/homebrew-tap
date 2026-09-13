cask "subbar" do
  version "1.0.37"
  sha256 "74be237c2771586367a9cdeafdf0e481ab6ca64cc2c3ceb474ab4a9401a8127f"

  url "https://cdn.jsdelivr.net/gh/MarcoLeongDev/homebrew-tap@v#{version}/dist/SubBar_#{version}_universal.dmg"
  name "SubBar"
  desc "Universal macOS menu-bar app to track Opencode Go and Minimax usage"
  homepage "https://github.com/MarcoLeongDev/subbar"
  app "SubBar.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/SubBar.app"]
  end
end
