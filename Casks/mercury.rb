cask "mercury" do
  version "0.1.1"
  sha256 "434875ea4ad8c6ffcfd73c8077798150da844992eadfa11d3d99a92afa57690b"

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
