class Spcc < Formula
  desc "Run a swift-package-index-style compatibility matrix locally"
  homepage "https://github.com/Kingpin-Apps/swift-package-compat-check"
  url "https://github.com/Kingpin-Apps/swift-package-compat-check/releases/download/0.8.0/spcc-0.8.0-macos-universal.tar.gz"
  sha256 "f1fb268f224ed165b18aa2c0e60b6c57d8312442999477ff2c0c1a41168910db"
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
