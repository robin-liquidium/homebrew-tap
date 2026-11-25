cask "dayline" do
  version "0.2.10"
  sha256 "8c0b4d7910e67d59248aad446e0bf825e05cc2578e3f72b3bf306eebd15a6009"

  url "https://github.com/robin-liquidium/dayline/releases/download/v#{version}/Dayline-#{version}.dmg"
  name "Dayline"
  desc "Menu bar calendar and Linear companion"
  homepage "https://dayline.robin.build/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Dayline.app"
end
