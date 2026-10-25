# Ad-hoc signed and not notarized. Install with:
#   brew install --cask --no-quarantine ryanstarfox/tap/macpower
cask "macpower" do
  version "1.2.14"
  sha256 "3813e9c3ec55dec678d5fe8dadb7d5d3465e0d9e8131e4f0c5cce823c291196d"

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
