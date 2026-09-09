cask "redmi-buds-bar" do
  version "0.1.1"
  sha256 "c545a84ac62a0af67bd49650ee8967370384aea7182243132ec57810fe072ac5"

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
