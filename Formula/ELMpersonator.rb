class Elmpersonator < Formula
  desc "ELM327 Impersonator for macOS and Linux"
  homepage "https://www.vanille.de"
  url "https://git.drlauer-research.com:3000/mickey/ELMpersonator.git"
  head "https://git.drlauer-research.com:3000/mickey/ELMpersonator.git", :tag => "0.5.9"
  version "0.5.9

  depends_on :xcode => ["13", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system bin/"ELMpersonator", "--help"
  end
end
