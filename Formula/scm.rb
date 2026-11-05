class Scm < Formula
  desc "TUI for Cardano blockchain interactions"
  homepage "https://github.com/Kingpin-Apps/swift-cardano-multitool"
  url "https://github.com/Kingpin-Apps/swift-cardano-multitool/releases/download/0.22.2/scm-0.22.2-macos-universal.tar.gz"
  sha256 "b43bcf321c9cbf62177696d8186db73585db677dff27ea72d5e28ed23dbeaf49"
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
