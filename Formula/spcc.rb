class Spcc < Formula
  desc "Run a swift-package-index-style compatibility matrix locally"
  homepage "https://github.com/Kingpin-Apps/swift-package-compat-check"
  url "https://github.com/Kingpin-Apps/swift-package-compat-check/releases/download/0.6.0/spcc-0.6.0-macos-universal.tar.gz"
  sha256 "0d04f02a6fb4436b1cd05169be05817150981f5e775536d849ce92abf99d69b1"
  license "MIT"

  depends_on macos: :sequoia

  def install
    bin.install "spcc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spcc --version")
  end
end
