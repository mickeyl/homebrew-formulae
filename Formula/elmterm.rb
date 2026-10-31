class Elmterm < Formula
  desc "Intelligent terminal for ELM327-compatible automotive diagnostics"
  homepage "https://github.com/Automotive-Swift/ELMterm"
  url "https://github.com/Automotive-Swift/ELMterm/archive/refs/tags/1.3.1.tar.gz"
  version "1.3.1"
  sha256 "5946b7b7c4a2c029a2476f9c259a4f23e5493f0787ae1841bea353f92c9c0d96"
  license "MIT"
  head "https://github.com/Automotive-Swift/ELMterm.git", branch: "master"

  depends_on :macos

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox", "--force-resolved-versions"
    bin.install ".build/release/ELMterm"
    (buildpath/"elmterm.1").write((buildpath/"man/ELMterm.1").read)
    system "gzip", "-n", "elmterm.1"
    man1.install "man/ELMterm.1"
    man1.install buildpath/"elmterm.1.gz"
  end

  test do
    system bin/"ELMterm", "--help"
    assert_equal version.to_s, shell_output("#{bin}/ELMterm --version").strip
    assert_path_exists man1/"ELMterm.1"
    assert_path_exists man1/"elmterm.1.gz"
  end
end
