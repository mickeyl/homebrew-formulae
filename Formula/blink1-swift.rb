class Blink1Swift < Formula
  desc "Control a ThingM blink(1) USB RGB LED from macOS"
  homepage "https://github.com/mickeyl/Blink1"
  url "https://github.com/mickeyl/Blink1/archive/refs/tags/1.1.1.tar.gz"
  sha256 "db6697a8652bd05082979671f24b34957ebf51618b3a46c8511e582b264a02f2"
  license "MIT"
  head "https://github.com/mickeyl/Blink1.git", branch: "main"

  depends_on xcode: ["16.0", :build]
  depends_on macos: :ventura

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/blink1"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blink1 --version")
  end
end
