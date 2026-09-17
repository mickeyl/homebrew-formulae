class Elmterm < Formula
  desc "Intelligent terminal for ELM327-compatible automotive diagnostics"
  homepage "https://github.com/Automotive-Swift/ELMterm"
  url "https://github.com/Automotive-Swift/ELMterm/archive/refs/tags/1.2.0.tar.gz"
  version "1.2.0"
  sha256 "e68156d1c8f0974d987c8503c129a22e0307db18a5fb2ffbe1a8c9e04738ccd8"
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
