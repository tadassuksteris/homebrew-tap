cask "damper" do
  version "0.1.0"
  sha256 "d253063b79a5e93f495dc0d4daa8daeae115d36c8dc0ac7ad56823aa1d0129b1"

  url "https://github.com/tadassuksteris/damper/releases/download/v#{version}/Damper-#{version}.zip"
  name "Damper"
  desc "Menu bar mixer for setting the volume of each app"
  homepage "https://github.com/tadassuksteris/damper"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Damper.app"

  uninstall quit: "io.github.tadassuksteris.damper"

  zap trash: [
    "~/Library/Application Scripts/io.github.tadassuksteris.damper",
    "~/Library/Containers/io.github.tadassuksteris.damper",
  ]
end
