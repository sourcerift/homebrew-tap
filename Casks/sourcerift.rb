cask "sourcerift" do
  version "0.1.4"
  sha256 "28f0b3faae316febc9d48d95f5d962d4d66d5d879804e7f8181f4448c7b6f12e"

  url "https://github.com/sourcerift/homebrew-tap/releases/download/v#{version}/SourceRift-macOS-arm64.zip"
  name "SourceRift"
  desc "Terminal workspace for navigating code"
  homepage "https://github.com/sourcerift/homebrew-tap"

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
