# Ad-hoc signed and not notarized. Install with:
#   brew install --cask --no-quarantine ryanstarfox/tap/macpower
cask "macpower" do
  version "1.2.13"
  sha256 "0eeb97ba904f634587d4b66b44978b2a14e5e107b7d1bc4618152fe1ec3ba25b"

  url "https://github.com/RyanStarFox/MacPower/releases/download/v#{version}/MacPower-#{version}.dmg"
  name "MacPower"
  desc "Menu bar battery monitor for Apple silicon MacBooks"
  homepage "https://github.com/RyanStarFox/MacPower"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "MacPower.app"

  zap trash: [
    "~/Library/Caches/app.macpower.MacPower",
    "~/Library/Preferences/app.macpower.MacPower.plist",
  ]
end
