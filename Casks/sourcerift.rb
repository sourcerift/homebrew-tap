cask "sourcerift" do
  version "0.3.1"
  sha256 "4c4dd5298f08fad9d93e220562423d917533dbcba2899f761e75ace072148285"

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
