class IphoneScreenshot < Formula
  desc "Capture screenshots from attached iPhones and iPads via devicectl"
  homepage "https://github.com/mickeyl/ScreenGrab"
  url "https://github.com/mickeyl/ScreenGrab/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "0bf82273c6e6bec1dd041d9b939417edb57439e636586bc87c7f1e3bbebe5a3e"
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
