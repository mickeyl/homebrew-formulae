class Elmterm < Formula
  desc "Intelligent terminal for ELM327-compatible automotive diagnostics"
  homepage "https://github.com/Automotive-Swift/ELMterm"
  url "https://github.com/Automotive-Swift/ELMterm/archive/refs/tags/1.1.0.tar.gz"
  version "1.1.0"
  sha256 "3f007d50546018b3c7146251f4f36a3209399c64640bcedcea7e24a902c30f31"
  license "MIT"
  head "https://github.com/Automotive-Swift/ELMterm.git", branch: "master"

  depends_on :macos

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/ELMterm"
    (buildpath/"elmterm.1").write((buildpath/"man/ELMterm.1").read)
    system "gzip", "-n", "elmterm.1"
    man1.install "man/ELMterm.1"
    man1.install buildpath/"elmterm.1.gz"
  end

  test do
    system bin/"ELMterm", "--help"
    assert_path_exists man1/"ELMterm.1"
    assert_path_exists man1/"elmterm.1.gz"
  end
end
