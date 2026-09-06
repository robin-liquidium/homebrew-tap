cask "dayline" do
  version "0.2.8"
  sha256 "5259d6bc89fc685d40889d426aebb449aff02ee51cc4aa9d7807b2cb4c473557"

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
