cask "openlens" do
    version "6.0.0"
  
    sha256 "029721455f1948e3165f6d14a3094a9eedbc0ef6c6fd0a984d945a7552a9be48"
  
    url "https://github.com/amoosbr/homebrew-openlens/releases/download/v#{version.csv.first}/OpenLens-#{version.csv.first}.dmg"
    name "Open Lens"
    desc "Kubernetes IDE, Open Source"
    homepage "https://github.com/amoosbr/homebrew-openlens"

    # auto_updates true

    livecheck do
      url "https://raw.githubusercontent.com/amoosbr/homebrew-openlens/main/version"
      strategy :page_match
      regex(/(\d+(?:\.\d+)*)/)
    end
  
    app "OpenLens.app"
  
    zap trash: [
      "~/Library/Application Support/OpenLens",
      "~/Library/Caches/OpenLens",
      "~/Library/Logs/OpenLens",
      "~/Library/Preferences/com.electron.open-lens.plist",
      "~/Library/Saved Application State/com.electron.open-lens.savedState",
    ]
  end
