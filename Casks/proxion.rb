cask "proxion" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.1"
  sha256 arm:   "caa6b652e8db4fe5fd4d55825e02278e2004ded032d742f0b81d26b7d527a56e",
         intel: "ac5e1d8e5e9c7f31f5adfd369dc10bd77852debb5a647ba129fb790867f60781"

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
