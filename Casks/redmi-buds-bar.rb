cask "redmi-buds-bar" do
  version "0.5.0"
  sha256 "8ae241ef6b2ca02d53868c7e6d0a878c88a0ae80807d906d1258a54d2077496b"

  url "https://github.com/robin-liquidium/redmi-buds-bar/releases/download/v#{version}/RedmiBudsBar-#{version}.dmg"
  name "Redmi Buds Bar"
  desc "Menu bar noise controls and battery levels for REDMI Buds 8 Pro"
  homepage "https://buds.robin.build/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "RedmiBudsBar.app"
end
