cask "mercury" do
  version "1.0.0"
  sha256 "PLACEHOLDER"

  url "https://github.com/uhojin/mercury/releases/download/v#{version}/Mercury-#{version}.dmg"
  name "Mercury"
  desc "Tiny macOS temperature monitor for your menu bar"
  homepage "https://github.com/uhojin/mercury"

  depends_on macos: ">= :sonoma"

  app "Mercury.app"

  zap trash: [
    "~/Library/Preferences/com.uhojin.Mercury.plist",
  ]
end
