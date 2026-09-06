cask "harness-launcher" do
  version "0.1.76"
  sha256 "6b5ee518ee05b94d67ad9cf5ca744552a0b7494a99ab5dbae898e73414b4121c"

  url "https://cdn.jsdelivr.net/gh/MarcoLeongDev/homebrew-tap@v#{version}/dist/Harness-Launcher_#{version}_universal.dmg"
  name "Harness Launcher"
  desc "Universal macOS menu-bar app to install, version and run the DeepSeek Harness engine"
  homepage "https://github.com/MarcoLeongDev/harness-launcher"

  app "Harness Launcher.app"

  # Harness Launcher is not Apple-notarized yet, and Homebrew quarantines all
  # cask downloads unconditionally. Strip the quarantine post-install so the
  # app launches without a Gatekeeper prompt. (Personal tap only — the
  # official homebrew/cask tap forbids this stanza pattern.)
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Harness Launcher.app"]
  end
end
