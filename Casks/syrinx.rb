cask "syrinx" do
  version "0.1.0"
  sha256 "66b8a1b8fc1feeae240e40f27d1e1d069dd92d617a6b7df2644336cb2b3788f0"

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
