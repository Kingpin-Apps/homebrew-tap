class Spcc < Formula
  desc "Run a swift-package-index-style compatibility matrix locally"
  homepage "https://github.com/Kingpin-Apps/swift-package-compat-check"
  url "https://github.com/Kingpin-Apps/swift-package-compat-check/releases/download/0.5.2/spcc-0.5.2-macos-universal.tar.gz"
  sha256 "3b65265af7fc8f8a373e6be61596f4b4dd7362f0fa6876d606171b8e98cac74b"
  license "MIT"

  depends_on macos: :sequoia

  def install
    bin.install "spcc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spcc --version")
  end
end
