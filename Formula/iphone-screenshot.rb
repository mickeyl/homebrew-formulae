class IphoneScreenshot < Formula
  desc "Capture screenshots of iPhones, iPads and simulators via devicectl/simctl"
  homepage "https://github.com/mickeyl/PNGuin"
  url "https://github.com/mickeyl/PNGuin/archive/refs/tags/v0.9.1.tar.gz"
  sha256 "c49c61f40b35013b8f19255a542df1b4b2b3667ee3ba888fc3af48493fa438d5"
  license "MIT"
  head "https://github.com/mickeyl/PNGuin.git", branch: "master"

  depends_on xcode: ["27.0", :build]
  depends_on macos: :sequoia

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox", "--product", "iphone-screenshot"
    bin.install ".build/release/iphone-screenshot"
  end

  def caveats
    <<~EOS
      iphone-screenshot calls `xcrun devicectl`, so Xcode 27 or later must be installed
      at runtime. Devices must be paired, trusted and unlocked.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/iphone-screenshot --version")
  end
end
