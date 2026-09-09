cask "redmi-buds-bar" do
  version "0.1.2"
  sha256 "41b34355a4a4c04bbe3b596201f6c3f1c4ee3c43dcde6f10626c097f7f91be8f"

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
