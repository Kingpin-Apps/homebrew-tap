class Spcc < Formula
  desc "Run a swift-package-index-style compatibility matrix locally"
  homepage "https://github.com/Kingpin-Apps/swift-package-compat-check"
  url "https://github.com/Kingpin-Apps/swift-package-compat-check/releases/download/0.5.3/spcc-0.5.3-macos-universal.tar.gz"
  sha256 "6c2036ece7fb19a0610195ca5ec282586ff679d2606277bb8d7aded725c5fd65"
  license "MIT"

  depends_on macos: :sequoia

  def install
    bin.install "spcc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spcc --version")
  end
end
