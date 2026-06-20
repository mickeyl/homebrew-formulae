class Lsaudio < Formula
  desc "Who is making noise? List and kill audio-playing processes on macOS"
  homepage "https://github.com/mickeyl/lsaudio"
  url "https://github.com/mickeyl/lsaudio/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "da66f71902d1f78f78bee2faa0d5419b4a98cbaed5ece7331e9d92f11589acb3"
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
