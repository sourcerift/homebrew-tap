cask "sourcerift@beta" do
  version "0.2.2"
  sha256 "9c20264636ffbfe29586f05c509272caab4128d3667c4218f83a968e6a9c36a7"

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
