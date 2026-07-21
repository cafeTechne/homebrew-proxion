cask "proxion" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.4"
  sha256 arm:   "b105499ac20fb89e1158e7f420d9c2ef98f95d1297c53136a0c8999322e295db",
         intel: "ae19b4a84cd6a5b3bd5ca86a060603e6d88e36c5d6973e03fee9dd8976d85df4"

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
