class IphoneScreenshot < Formula
  desc "Capture screenshots from attached iPhones and iPads via devicectl"
  homepage "https://github.com/mickeyl/ScreenGrab"
  url "https://github.com/mickeyl/ScreenGrab/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "3068a4c85812f8ceb28bfd4c0b1ce14fa96dd5bf4d1b6f0b6b039a0cdc50cdc2"
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
