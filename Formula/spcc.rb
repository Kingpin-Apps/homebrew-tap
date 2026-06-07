class Spcc < Formula
  desc "Run a swift-package-index-style compatibility matrix locally"
  homepage "https://github.com/Kingpin-Apps/swift-package-compat-check"
  url "https://github.com/Kingpin-Apps/swift-package-compat-check/releases/download/0.4.0/spcc-0.4.0-macos-universal.tar.gz"
  sha256 "0da4b0dc4d2813f762886e49891701246f6ab61af812514569595414e0bb8a81"
  license "Apache-2.0"

  depends_on macos: :sequoia

  def install
    bin.install "spcc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spcc --version")
  end
end
