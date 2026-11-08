cask "sourcerift-beta" do
  version "0.1.0-alpha.1"
  sha256 "PLACEHOLDER"

  url "https://github.com/sourcerift/sourcerift/releases/download/v#{version}/SourceRift-macOS-arm64.zip"
  name "SourceRift Beta"
  desc "Terminal workspace for navigating code (beta channel)"
  homepage "https://github.com/sourcerift/sourcerift"

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "SourceRift.app"

  zap trash: [
    "~/Library/Application Support/org.sourcerift.SourceRift",
    "~/Library/Preferences/org.sourcerift.SourceRift.plist",
    "~/Library/Caches/org.sourcerift.SourceRift",
  ]
end
