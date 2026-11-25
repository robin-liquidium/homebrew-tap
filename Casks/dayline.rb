cask "dayline" do
  version "0.2.9"
  sha256 "4f0aea08a333c4340f50ffab98f743a73e68eac3c1efae0d79b89530cf59cfec"

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
