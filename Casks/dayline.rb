cask "dayline" do
  version "0.1.8"
  sha256 "df2f834cb69c90f04e052fb138771522c1c868f11d7fe381282169e9f8b06b30"

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
