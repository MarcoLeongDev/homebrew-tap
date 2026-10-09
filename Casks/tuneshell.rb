cask "tuneshell" do
  version "0.1.86"
  sha256 "e27081ad184777379fe4d49a3eff39c8aad3957053d1eb4a9efbf5ea035937ca"

  url "https://github.com/MarcoLeongDev/tuneshell/releases/download/v#{version}/Tuneshell_#{version}_universal.dmg"
  name "Tuneshell"
  desc "Universal macOS desktop app for local AI song generation (YuE2 on MLX)"
  homepage "https://github.com/MarcoLeongDev/tuneshell"
  app "Tuneshell.app"

  # Tuneshell is not Apple-notarized yet, and Homebrew quarantines all
  # cask downloads unconditionally. Strip the quarantine post-install so the
  # app launches without a Gatekeeper prompt. (Personal tap only — the
  # official homebrew/cask tap forbids this stanza pattern.)
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Tuneshell.app"]
  end
end
