class Elmterm < Formula
  desc "Intelligent terminal for ELM327-compatible automotive diagnostics"
  homepage "https://github.com/Automotive-Swift/ELMterm"
  url "https://github.com/Automotive-Swift/ELMterm/archive/refs/tags/1.3.0.tar.gz"
  version "1.3.0"
  sha256 "7094520836401d0cacaf6696638c305af251b89a1852741f5ee08af02a2cc6df"
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
