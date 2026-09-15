class Spcc < Formula
  desc "Run a swift-package-index-style compatibility matrix locally"
  homepage "https://github.com/Kingpin-Apps/swift-package-compat-check"
  url "https://github.com/Kingpin-Apps/swift-package-compat-check/releases/download/0.7.0/spcc-0.7.0-macos-universal.tar.gz"
  sha256 "273ad1aa01c8e32a61616854293ebca673b1f476a651fd279882cd7c2ad3ff6e"
  license "MIT"

  depends_on macos: :sequoia

  def install
    bin.install "spcc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spcc --version")
  end
end
