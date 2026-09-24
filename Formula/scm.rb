class Scm < Formula
  desc "TUI for Cardano blockchain interactions"
  homepage "https://github.com/Kingpin-Apps/swift-cardano-multitool"
  url "https://github.com/Kingpin-Apps/swift-cardano-multitool/releases/download/0.13.1/scm-0.13.1-macos-universal.tar.gz"
  sha256 "fa317339a97d742b66b2be0cdfb9f923eabbcaac3b152eb296a2b626bdb4224a"
  license "MIT"

  depends_on macos: :sequoia

  def install
    bin.install "scm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scm --version")
  end
end
