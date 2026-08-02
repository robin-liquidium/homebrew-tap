cask "dayline" do
  version "0.2.3"
  sha256 "1367072dd5cd78b1b49d11b97c3048de15187ed4f6e3440a73b9f4ac357877fc"

  url "https://github.com/robin-liquidium/dayline/releases/download/v#{version}/Dayline-#{version}.dmg",
      verified: "github.com/robin-liquidium/dayline/"
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
