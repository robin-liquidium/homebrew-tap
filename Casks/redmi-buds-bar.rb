cask "redmi-buds-bar" do
  version "0.4.0"
  sha256 "4c0d0bc400d8c066b1b68f51c275bd1f40b05a9fcec27303537adc8310e25407"

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
