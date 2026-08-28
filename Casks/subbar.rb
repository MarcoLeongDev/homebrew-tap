cask "subbar" do
  version "1.0.32"
  sha256 "8be513f1dc7b7b87107eb70787c1d11c18e8d231afcb3f5d7e0be47e3d2875b6"

  url "https://cdn.jsdelivr.net/gh/MarcoLeongDev/homebrew-tap@v#{version}/dist/SubBar_#{version}_universal.dmg"
  name "SubBar"
  desc "Universal macOS menu-bar app to track Opencode Go and Minimax usage"
  homepage "https://github.com/MarcoLeongDev/subbar"
  app "SubBar.app"
  caveats "SubBar is a menu-bar app. After install, look for its icon at the top-right of your screen."
end
