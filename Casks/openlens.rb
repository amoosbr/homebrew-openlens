cask "openlens" do
    version "6.0.0"

    if OS.mac? && Hardware::CPU.intel?
      sha256 "fa944634f6b2135cfee2024f480bee3e1d3d42726e4ba90636101f5cc0b73789"
      url "https://github.com/amoosbr/homebrew-openlens/releases/download/v#{version}/OpenLens-#{version}.dmg"
    end

    if OS.mac? && Hardware::CPU.arm?
      sha256 "2a35f8548d0d6f63bcc5339ea72bbd9b1b812e7381717c3ea3dea8a8007772ea"
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
