cask "harness-launcher" do
  version "0.1.87"
  sha256 "2515d2fdf43a4787086b96f914f6d96984b46bed62d8388e04e5e61eb08ba538"

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
