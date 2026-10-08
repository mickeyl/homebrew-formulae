class IphoneScreenshot < Formula
  desc "Capture screenshots from attached iPhones and iPads via devicectl"
  homepage "https://github.com/mickeyl/ScreenGrab"
  url "https://github.com/mickeyl/ScreenGrab/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "d5494e6f553ca814409b18f7602db351721254305bd9d3c8fa665486ecfaf5b4"
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
