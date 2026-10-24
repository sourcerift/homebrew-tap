class Sourcerift < Formula
  depends_on arch: :arm64
  depends_on macos: :sequoia
  desc "A local cross-repository code explorer"
  homepage "https://github.com/sourcerift/homebrew-tap"
  version "0.2.0"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/sourcerift/homebrew-tap/releases/download/v0.2.0/sourcerift-aarch64-apple-darwin.tar.gz"
      sha256 "3570bdfba38721e3be01a23b6009a3a5d14ff4f3b04b5ec8555188455642d1c3"
    end
  end
  license "MIT"

  BINARY_ALIASES = {
    "aarch64-apple-darwin": {
      "sourcerift": [
        "srft"
      ]
    }
  }

  def target_triple
    cpu = Hardware::CPU.arm? ? "aarch64" : "x86_64"
    os = OS.mac? ? "apple-darwin" : "unknown-linux-gnu"

    "#{cpu}-#{os}"
  end

  def install_binary_aliases!
    BINARY_ALIASES[target_triple.to_sym].each do |source, dests|
      dests.each do |dest|
        bin.install_symlink bin/source.to_s => dest
      end
    end
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "sourcerift"
    end

    install_binary_aliases!

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install(*leftover_contents) unless leftover_contents.empty?
  end
test do
  assert_equal "sourcerift #{version}", shell_output("#{bin}/sourcerift --version").strip
  assert_equal "sourcerift #{version}", shell_output("#{bin}/srft --version").strip
  system bin/"sourcerift", "--root", testpath, "doctor"
end
end
