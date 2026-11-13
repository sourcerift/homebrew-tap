cask "sourcerift" do
  version "0.1.8"
  sha256 "3bde8c9f3ea6b60daab837012f8591a3cbb440984e4c3c7998287869ed384e71"

  url "https://github.com/sourcerift/homebrew-tap/releases/download/v#{version}/SourceRift-macOS-arm64.zip"
  name "SourceRift"
  desc "Terminal workspace for navigating code"
  homepage "https://sourcerift.com/"

  livecheck do
    url "https://github.com/sourcerift/homebrew-tap.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  conflicts_with cask: "sourcerift@beta"
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
