cask "mercury" do
  version "0.1.0"
  sha256 "5a88a5f926d860b525779a243f011dc719a31fb59699d6222fa1c75b10ebe21d"

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
