class Scm < Formula
  desc "TUI for Cardano blockchain interactions"
  homepage "https://github.com/Kingpin-Apps/swift-cardano-multitool"
  url "https://github.com/Kingpin-Apps/swift-cardano-multitool/releases/download/0.12.0/scm-0.12.0-macos-universal.tar.gz"
  sha256 "9a9412b419fbd2a78ce9835f860bbd47c1bc45c80bbe3903a60fcc42234eb8bb"
  license "MIT"

  depends_on macos: :sequoia

  def install
    bin.install "scm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scm --version")
  end
end
