class Spcc < Formula
  desc "Run a swift-package-index-style compatibility matrix locally"
  homepage "https://github.com/Kingpin-Apps/swift-package-compat-check"
  url "https://github.com/Kingpin-Apps/swift-package-compat-check/releases/download/0.9.0/spcc-0.9.0-macos-universal.tar.gz"
  sha256 "80d86ee3cc7ea5961a473bc2ba27a9a3a5e6ec163b34eb6853a2636ec226f2c0"
  license "MIT"

  depends_on macos: :sequoia

  def install
    bin.install "spcc"
    generate_completions_from_executable(bin/"spcc", "--generate-completion-script")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spcc --version")
  end
end
