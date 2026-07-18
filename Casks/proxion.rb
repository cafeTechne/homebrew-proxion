cask "proxion" do
  version "0.1.0"
  sha256 "32ee6f34568a34d375210642747d731f9a96cf845ebc3444e3ba0c28578b8fff"

  url "https://github.com/cafeTechne/proxion-messenger/releases/download/v#{version}/Proxion_#{version}_aarch64.dmg"
  name "Proxion"
  desc "Sovereign messenger built on the Solid Protocol"
  homepage "https://cafetechne.github.io/proxion-messenger/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # v0.1.0 shipped Apple Silicon only; Intel (macOS 10.15+) lands in v0.1.1.
  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "Proxion.app"

  zap trash: [
    "~/Library/Application Support/dev.proxion.app",
    "~/Library/Caches/dev.proxion.app",
    "~/Library/Preferences/dev.proxion.app.plist",
    "~/Library/Saved Application State/dev.proxion.app.savedState",
    "~/Library/WebKit/dev.proxion.app",
  ]
end
