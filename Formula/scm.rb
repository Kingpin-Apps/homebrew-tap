class Scm < Formula
  desc "TUI for Cardano blockchain interactions"
  homepage "https://github.com/Kingpin-Apps/swift-cardano-multitool"
  url "https://github.com/Kingpin-Apps/swift-cardano-multitool/releases/download/0.22.10/scm-0.22.10-macos-universal.tar.gz"
  sha256 "373b4ee8ce55bee28402f30e17013844fbf0039db22b8d504db14e123e9c2f80"
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
