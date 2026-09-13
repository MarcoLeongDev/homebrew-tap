cask "harness-launcher" do
  version "0.1.107"
  sha256 "184b4cfbd94cf9e8a5643d59642ca2fa732b8dd40f3e29ff10a7ea0794bb5ffa"

  url "https://github.com/MarcoLeongDev/harness-launcher/releases/download/v#{version}/Harness-Launcher_#{version}_universal.dmg"
  name "Harness Launcher"
  desc "Universal macOS menu-bar app to install, version and run the DeepSeek Harness engine"
  homepage "https://github.com/MarcoLeongDev/harness-launcher"

  app "Harness Launcher.app"

  # Harness Launcher is not Apple-notarized yet, and Homebrew quarantines all
  # cask downloads unconditionally. Strip the quarantine post-install so the
  # app launches without a Gatekeeper prompt. (Personal tap only — the
  # official homebrew/cask tap forbids this stanza pattern.)
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Harness Launcher.app"]
  end
end
