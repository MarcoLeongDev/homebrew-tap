cask "harness-launcher" do
  version "0.1.87"
  sha256 "5090962921e00d9e59e5eed617642ed116ff3f2d6d07d342dade2dcbd876bf99"

  url "https://github.com/MarcoLeongDev/harness-launcher/releases/download/v#{version}/Harness-Launcher_#{version}_universal.dmg"
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
