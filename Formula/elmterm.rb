class Elmterm < Formula
  desc "Intelligent terminal for ELM327-compatible automotive diagnostics"
  homepage "https://github.com/Automotive-Swift/ELMterm"
  url "https://github.com/Automotive-Swift/ELMterm/archive/refs/tags/0.9.1.tar.gz"
  version "0.9.1"
  sha256 "6a2d02b83df55dc758518ff2da78d96f902e0ef7920c4a13d80c0eed351e4286"
  license "MIT"
  head "https://github.com/Automotive-Swift/ELMterm.git", branch: "master"

  depends_on :macos

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/ELMterm"
    man1.install "man/ELMterm.1"
  end

  test do
    system bin/"ELMterm", "--help"
  end
end
