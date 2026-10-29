# Ad-hoc signed and not notarized. Install with:
#   brew install --cask --no-quarantine ryanstarfox/tap/macpower
cask "macpower" do
  version "1.3.0"
  sha256 "a4f323f9ef38a86df32f6a40ae5b95346e41574f4b7898d33335fb521181f94d"

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
