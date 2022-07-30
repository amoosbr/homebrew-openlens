cask "openlens" do
    version "6.0.0"

    if OS.mac? && Hardware::CPU.intel?
      sha256 "ce02a97fb95aca9bba44413d4158f5f2c182f5eb2823bedf1400f556bb9b"
      url "https://github.com/amoosbr/homebrew-openlens/releases/download/v#{version}/OpenLens-#{version}.dmg"
    end

    if OS.mac? && Hardware::CPU.arm?
      sha256 "1c69849ba82c10d15706d110ae63bd97c387da2a8cf925653e1bb5c6fc"
      url "https://github.com/amoosbr/homebrew-openlens/releases/download/v#{version}/OpenLens-#{version}-arm64.dmg"
    end

    name "Open Lens"
    desc "Kubernetes IDE, Open Source"
    homepage "https://github.com/amoosbr/homebrew-openlens"

    livecheck do
      url "https://raw.githubusercontent.com/amoosbr/homebrew-openlens/main/version"
      strategy :page_match
      regex(/(\d+(?:\.\d+)*)/)
    end

    # auto_updates true

    app "OpenLens.app"

    zap trash: [
      "~/Library/Application Support/OpenLens",
      "~/Library/Caches/OpenLens",
      "~/Library/Logs/OpenLens",
      "~/Library/Preferences/com.electron.open-lens.plist",
      "~/Library/Saved Application State/com.electron.open-lens.savedState",
    ]
  end
