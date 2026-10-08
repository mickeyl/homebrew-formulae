class IphoneScreenshot < Formula
  desc "Capture screenshots of iPhones, iPads and simulators via devicectl/simctl"
  homepage "https://github.com/mickeyl/ScreenGrab"
  url "https://github.com/mickeyl/ScreenGrab/archive/refs/tags/v0.9.0.tar.gz"
  sha256 "1f59bef0c528ee230554269786fad126740b8d08292bc527149a6fe9cef79c93"
  license "MIT"
  head "https://github.com/mickeyl/ScreenGrab.git", branch: "master"

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
