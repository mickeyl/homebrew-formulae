class Lsaudio < Formula
  desc "Who is making noise? List and kill audio-playing processes on macOS"
  homepage "https://github.com/mickeyl/lsaudio"
  url "https://github.com/mickeyl/lsaudio/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "b0bfa081975cb3edb02be0f188f3c691b8733051798e5a6da19daa2b19636ac3"
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
