cask "dayline" do
  version "0.1.9"
  sha256 "26a8c7eaead8a9edd05468a41a290a64704b8cec3834eb2eea58ef9e0305fe01"

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
