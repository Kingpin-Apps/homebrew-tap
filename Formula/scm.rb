class Scm < Formula
  desc "TUI for Cardano blockchain interactions"
  homepage "https://github.com/Kingpin-Apps/swift-cardano-multitool"
  url "https://github.com/Kingpin-Apps/swift-cardano-multitool/releases/download/0.15.1/scm-0.15.1-macos-universal.tar.gz"
  sha256 "e0a0d6fd17712bb9243af081ca19a9d3c9b676aa28760f66b9d0ac6fc79619c2"
  license "MIT"

  depends_on macos: :sequoia

  def install
    bin.install "scm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scm --version")
  end
end
