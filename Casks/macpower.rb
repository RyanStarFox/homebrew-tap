# Ad-hoc signed and not notarized. Install with:
#   brew install --cask --no-quarantine ryanstarfox/tap/macpower
cask "macpower" do
  version "1.2.11"
  sha256 "f29be874c97d0322eb956b9405bd6541d087c26ebea348bea1ebef644ac97c1e"

  url "https://github.com/RyanStarFox/MacPower/releases/download/v#{version}/MacPower-#{version}.dmg"
  name "MacPower"
  desc "Menu bar battery monitor for Apple silicon MacBooks"
  homepage "https://github.com/RyanStarFox/MacPower"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "MacPower.app"

  zap trash: [
    "~/Library/Caches/app.macpower.MacPower",
    "~/Library/Preferences/app.macpower.MacPower.plist",
  ]
end
