class Scm < Formula
  desc "TUI for Cardano blockchain interactions"
  homepage "https://github.com/Kingpin-Apps/swift-cardano-multitool"
  url "https://github.com/Kingpin-Apps/swift-cardano-multitool/releases/download/0.21.0/scm-0.21.0-macos-universal.tar.gz"
  sha256 "75f64c9b21d2c879c38ec79339f7f80379f566eb6248b93bb93a2fc3d2c6084c"
  license "MIT"

  depends_on macos: :sequoia

  def install
    bin.install "scm"
    generate_completions_from_executable(bin/"scm", "--generate-completion-script")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scm --version")
  end
end
