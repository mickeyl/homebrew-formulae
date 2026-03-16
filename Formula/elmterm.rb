class Elmterm < Formula
  desc "Intelligent terminal for ELM327-compatible automotive diagnostics"
  homepage "https://github.com/Automotive-Swift/ELMterm"
  url "https://github.com/Automotive-Swift/ELMterm/archive/refs/tags/1.0.1.tar.gz"
  version "1.0.1"
  sha256 "be003fb8fa62ed8d4d944daa05fc9a445b1218bc36ee5d2f18cc7d5af7126787"
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
