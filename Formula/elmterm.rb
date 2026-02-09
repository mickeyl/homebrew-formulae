class Elmterm < Formula
  desc "Intelligent terminal for ELM327-compatible automotive diagnostics"
  homepage "https://github.com/Automotive-Swift/ELMterm"
  url "https://github.com/Automotive-Swift/ELMterm/archive/refs/tags/1.0.0.tar.gz"
  version "1.0.0"
  sha256 "3500247f4f2ff3f551b4229c3581c206306c0907a7058eb65acdda780c66d600"
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
