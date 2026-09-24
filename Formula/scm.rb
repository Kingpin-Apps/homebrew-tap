class Scm < Formula
  desc "TUI for Cardano blockchain interactions"
  homepage "https://github.com/Kingpin-Apps/swift-cardano-multitool"
  url "https://github.com/Kingpin-Apps/swift-cardano-multitool/releases/download/0.15.0/scm-0.15.0-macos-universal.tar.gz"
  sha256 "5ffd5f5559a53a1e3602707054c65ab4c3ff06b2c46e294595db61dbc0bc0cde"
  license "MIT"

  depends_on macos: :sequoia

  def install
    bin.install "scm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scm --version")
  end
end
