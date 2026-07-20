cask "proxion" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.2"
  sha256 arm:   "a82f38dd44c88183adcf798863cc8bf7cd3aed101e3a0766b1985e5fe96f0396",
         intel: "e44c85af26427dc2d516e34c613990bedf5b2e430694fca9d35ecac1fe7a34de"

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
