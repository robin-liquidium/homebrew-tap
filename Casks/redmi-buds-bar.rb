cask "redmi-buds-bar" do
  version "0.3.0"
  sha256 "1ad3a9f477096fbe13aec8fd34016c877360563ee0ceead8a76cf0465ab2f0d3"

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
