class Impossible < Formula
  desc "Real BLE hardware access from the iOS Simulator"
  homepage "https://github.com/mickeyl/ImpossiBLE"
  url "https://github.com/mickeyl/ImpossiBLE/archive/refs/tags/0.2.tar.gz"
  version "0.2"
  sha256 "24c48e778d55a8eac346a49de429b1eb2600ced61379ce0cc5b5abd75f7aea55"
  license "MIT"
  head "https://github.com/mickeyl/ImpossiBLE.git", branch: "master"

  depends_on :macos

  def caveats
    <<~EOS
      Start the helper with:
        open #{bin}/impossible-helper.app

      The helper must be running before launching your iOS Simulator app.
      On first launch, macOS will prompt you to allow Bluetooth access.
    EOS
  end

  def install
    system "make", "helper"
    bin.install "impossible-helper.app"
  end

  test do
    assert_predicate bin/"impossible-helper.app/Contents/MacOS/impossible-helper", :executable?
  end
end
