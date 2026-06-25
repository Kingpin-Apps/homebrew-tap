class Scm < Formula
  desc "TUI for Cardano blockchain interactions"
  homepage "https://github.com/Kingpin-Apps/swift-cardano-multitool"
  url "https://github.com/Kingpin-Apps/swift-cardano-multitool/releases/download/0.8.2/scm-0.8.2-macos-universal.tar.gz"
  sha256 "15b8d0d3f80359d955307412f20295eaa66ba7df581f960649882bbf2278aeb9"
  license "MIT"

  depends_on macos: :sequoia

  def install
    bin.install "scm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scm --version")
  end
end
