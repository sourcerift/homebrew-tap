cask "sourcerift" do
  version "0.2.0"
  sha256 "05b3c5d0a95b116dcdfe95b69d9a0deb10e9f361671b8048d3499ece72720595"

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
