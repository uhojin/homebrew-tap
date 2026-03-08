cask "mercury" do
  version "0.2.1"
  sha256 "207d9fb970bf2bc41f35a9c0faab77a42f0b737f028033c88d21d352628b18f6"

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
