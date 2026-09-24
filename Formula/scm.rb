class Scm < Formula
  desc "TUI for Cardano blockchain interactions"
  homepage "https://github.com/Kingpin-Apps/swift-cardano-multitool"
  url "https://github.com/Kingpin-Apps/swift-cardano-multitool/releases/download/0.13.2/scm-0.13.2-macos-universal.tar.gz"
  sha256 "51808f05dbea9af8e0fcc9ceaf5093d451879a790c351554d95aeb4f4918c702"
  license "MIT"

  depends_on macos: :sequoia

  def install
    bin.install "scm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/scm --version")
  end
end
