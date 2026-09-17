class Scm < Formula
  desc "TUI for Cardano blockchain interactions"
  homepage "https://github.com/Kingpin-Apps/swift-cardano-multitool"
  url "https://github.com/Kingpin-Apps/swift-cardano-multitool/releases/download/0.11.0/scm-0.11.0-macos-universal.tar.gz"
  sha256 "c3b3c55a109ef2d17fbbf0e8224ba74d37ac6777c079edd950a1450dd8dd028f"
  license "MIT"

  depends_on macos: :sequoia

  def install
    bin.install "scm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scm --version")
  end
end
