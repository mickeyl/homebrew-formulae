class Lsaudio < Formula
  desc "Who is making noise? List and kill audio-playing processes on macOS"
  homepage "https://github.com/mickeyl/lsaudio"
  url "https://github.com/mickeyl/lsaudio/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "18d4cd0663589e68fdf73ac92aa7b7d3bb06134b5e3a037b2746e17f7270a338"
  license "MIT"
  head "https://github.com/mickeyl/lsaudio.git", branch: "master"

  depends_on xcode: ["15.0", :build]
  depends_on macos: :sonoma

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/lsaudio"
    man1.install "lsaudio.1"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lsaudio --version")
  end
end
