cask "syrinx" do
  version "0.1.0"
  sha256 "1d1cba7da776989215eba1cad1c89adafcb6b53ce6f7c4138e09738cccc921e4"

  url "https://github.com/uhojin/syrinx/releases/download/v#{version}/Syrinx-#{version}.dmg"
  name "Syrinx"
  desc "Native soundboard that routes into your voice calls"
  homepage "https://github.com/uhojin/syrinx"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Syrinx.app"

  zap trash: [
    "~/Library/Application Support/Syrinx",
    "~/Library/Preferences/com.hojin.syrinx.plist",
  ]
end
