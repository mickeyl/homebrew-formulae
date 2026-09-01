class Pkram < Formula
  desc "Track Papierkram work time from the terminal"
  homepage "https://github.com/mickeyl/pkram"
  url "https://github.com/mickeyl/pkram/archive/refs/tags/1.0.0.tar.gz"
  sha256 "bfa43b50c2683fa81ac3cf4ca816be9488ca20e5f5bee969f04e617583e25439"
  license "MIT"
  head "https://github.com/mickeyl/pkram.git", branch: "master"

  depends_on :macos

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/pkram"
    bin.install_symlink bin/"pkram" => "pk"
    man1.install "man/pkram.1"
  end

  test do
    assert_match "1.0.0", shell_output("#{bin}/pkram --version")
    system bin/"pkram", "--help"
    assert_path_exists man1/"pkram.1"
  end
end
