cask "damper" do
  version "0.1.1"
  sha256 "c87c3147b1dfaa18e9ac4ee951fddd45bf974d246a3fa15b8fda277b40b04ef0"

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
