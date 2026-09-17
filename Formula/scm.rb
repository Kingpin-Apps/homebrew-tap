class Scm < Formula
  desc "TUI for Cardano blockchain interactions"
  homepage "https://github.com/Kingpin-Apps/swift-cardano-multitool"
  url "https://github.com/Kingpin-Apps/swift-cardano-multitool/releases/download/0.10.3/scm-0.10.3-macos-universal.tar.gz"
  sha256 "a8f91c0cbe5a30ce298f4b05a0c4a92833b48ae706209474cc5b94d0e8ce58b3"
  license "MIT"

  depends_on macos: :sequoia

  def install
    bin.install "scm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scm --version")
  end
end
