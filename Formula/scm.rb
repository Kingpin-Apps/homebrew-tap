class Scm < Formula
  desc "TUI for Cardano blockchain interactions"
  homepage "https://github.com/Kingpin-Apps/swift-cardano-multitool"
  url "https://github.com/Kingpin-Apps/swift-cardano-multitool/releases/download/0.15.2/scm-0.15.2-macos-universal.tar.gz"
  sha256 "19d9947f0d52622db839b21978ef3c294bfe13db4b2bdf8b4543f63632af9e46"
  license "MIT"

  depends_on macos: :sequoia

  def install
    bin.install "scm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scm --version")
  end
end
