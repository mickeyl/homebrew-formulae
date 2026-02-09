class Elmterm < Formula
  desc "Intelligent terminal for ELM327-compatible automotive diagnostics"
  homepage "https://github.com/Automotive-Swift/ELMterm"
  url "https://github.com/Automotive-Swift/ELMterm/archive/refs/tags/0.9.9.tar.gz"
  version "0.9.9"
  sha256 "ba283b5daf50373182e930051a79b62831afd82c2e05cf7b7129ebd309e13321"
  license "MIT"
  head "https://github.com/Automotive-Swift/ELMterm.git", branch: "master"

  depends_on :macos

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/ELMterm"
    man1.install "man/ELMterm.1"
    system "gzip", "-n", "-c", "man/ELMterm.1", out: buildpath/"elmterm.1.gz"
    man1.install buildpath/"elmterm.1.gz"
  end

  test do
    system bin/"ELMterm", "--help"
    assert_path_exists man1/"ELMterm.1"
    assert_path_exists man1/"elmterm.1.gz"
  end
end
