cask "sourcerift-beta" do
  version "0.1.0-alpha.1"
  sha256 :no_check # Set by the first release

  url "https://github.com/sourcerift/homebrew-tap/releases/download/v#{version}/SourceRift-macOS-arm64.zip"
  name "SourceRift Beta"
  desc "Terminal workspace for navigating code (beta channel)"
  homepage "https://github.com/sourcerift/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "SourceRift.app"

  zap trash: [
    "~/Library/Application Support/org.sourcerift.SourceRift",
    "~/Library/Caches/org.sourcerift.SourceRift",
    "~/Library/Preferences/org.sourcerift.SourceRift.plist",
  ]

  caveats <<~EOS
    Preview builds are not notarized. The first time you open SourceRift, macOS
    blocks it. Choose Open Anyway in System Settings > Privacy & Security, or run:
      xattr -dr com.apple.quarantine "#{appdir}/SourceRift.app"
  EOS
end
