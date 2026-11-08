class Scm < Formula
  desc "TUI for Cardano blockchain interactions"
  homepage "https://github.com/Kingpin-Apps/swift-cardano-multitool"
  url "https://github.com/Kingpin-Apps/swift-cardano-multitool/releases/download/0.22.13/scm-0.22.13-macos-universal.tar.gz"
  sha256 "d6cebfdbe216a694ecc799ef4be0795f7070756be5e955652ca1c5fbe71a270b"
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
