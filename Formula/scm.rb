class Scm < Formula
  desc "TUI for Cardano blockchain interactions"
  homepage "https://github.com/Kingpin-Apps/swift-cardano-multitool"
  url "https://github.com/Kingpin-Apps/swift-cardano-multitool/releases/download/0.14.0/scm-0.14.0-macos-universal.tar.gz"
  sha256 "04f05a3ba86f472eee0e3832714e864948ef98875b556ed61a37c3fa097e76a9"
  license "MIT"

  depends_on macos: :sequoia

  def install
    bin.install "scm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scm --version")
  end
end
