cask "mercury" do
  version "0.1.1"
  sha256 "4a48833478b4fc17454c3924066e8dadb68915a52c3ee06df612839db2b0bdbb"

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
