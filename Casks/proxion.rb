cask "proxion" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.3"
  sha256 arm:   "5352bea26fd6b31f6a7f72708fabc4e57bfe12f137a96599948f0285670cec07",
         intel: "d17c61752f7996d36549b921312dd2e12f0f518c2de324660a69b3e537c8bed8"

  url "https://github.com/cafeTechne/proxion-messenger/releases/download/v#{version}/Proxion_#{version}_#{arch}.dmg"
  name "Proxion"
  desc "Sovereign messenger built on the Solid Protocol"
  homepage "https://cafetechne.github.io/proxion-messenger/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Proxion.app"

  zap trash: [
    "~/Library/Application Support/dev.proxion.app",
    "~/Library/Caches/dev.proxion.app",
    "~/Library/Preferences/dev.proxion.app.plist",
    "~/Library/Saved Application State/dev.proxion.app.savedState",
    "~/Library/WebKit/dev.proxion.app",
  ]
end
