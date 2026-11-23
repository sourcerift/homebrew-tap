cask "sourcerift@beta" do
  version "0.3.2-beta.1"
  sha256 "3aeb85513814e9575ebd954ca6e6420d76021b28398d1cdeaf2c644e8c931a97"

  url "https://github.com/sourcerift/homebrew-tap/releases/download/v#{version}/SourceRift-macOS-arm64.zip"
  name "SourceRift Beta"
  desc "Terminal workspace for navigating code"
  homepage "https://sourcerift.com/"

  livecheck do
    url "https://github.com/sourcerift/homebrew-tap.git"
    regex(/^v?(\d+(?:\.\d+)+(?:-(?:alpha|beta|rc)\.\d+)?)$/i)
  end

  conflicts_with cask: "sourcerift"
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "SourceRift.app"

  zap trash: [
    "~/Library/Application Support/org.sourcerift.SourceRift",
    "~/Library/Application Support/SourceRift",
    "~/Library/Caches/org.sourcerift.SourceRift",
    "~/Library/Preferences/org.sourcerift.SourceRift.plist",
  ]
end
