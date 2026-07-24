cask "dayline" do
  version "0.1.11"
  sha256 "a4206675afdbb0dc063de56ea0d58f0a2b4a2e44136e99361f295d0e630d5540"

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
