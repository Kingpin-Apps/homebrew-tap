class Scm < Formula
  desc "TUI for Cardano blockchain interactions"
  homepage "https://github.com/Kingpin-Apps/swift-cardano-multitool"
  url "https://github.com/Kingpin-Apps/swift-cardano-multitool/releases/download/0.22.5/scm-0.22.5-macos-universal.tar.gz"
  sha256 "edf428454e644f45221bf5e7bad343d0c73cdd16e7e1fcae4d248512297154ce"
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
