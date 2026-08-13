cask "dayline" do
  version "0.2.7"
  sha256 "6f7a6f878b8f6e358ad36b6f224a4beb827573e91446243ab71748bd4e80e89e"

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
