cask "openlens" do
    version "6.0.0"

    if OS.mac? && Hardware::CPU.intel?
      sha256 "24ca5ac1ebb39b68cdad1d7026af6c5dfb14df09a561da0bed7fe0094c661ff2"
      url "https://github.com/amoosbr/homebrew-openlens/releases/download/v#{version}/OpenLens-#{version}.dmg"
    end

    if OS.mac? && Hardware::CPU.arm?
      sha256 "30b00a143faf1a2e6cbc0f6844473c50120d0b0c3a00239641f28ee631cfe886"
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
