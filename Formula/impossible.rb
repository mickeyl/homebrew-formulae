class Impossible < Formula
  desc "Real BLE hardware access from the iOS Simulator"
  homepage "https://github.com/mickeyl/ImpossiBLE"
  url "https://github.com/mickeyl/ImpossiBLE/archive/refs/tags/0.3.tar.gz"
  version "0.3"
  sha256 "45a4449e39affcc5ce423c0e6053e94b7bbd9f459868144d2366d7b1d4ec813c"
  license "MIT"
  head "https://github.com/mickeyl/ImpossiBLE.git", branch: "master"

  depends_on :macos

  def caveats
    <<~EOS
      Start the helper with:
        impossible-helper start

      Check whether it is running:
        impossible-helper status

      Auto-start at login:
        impossible-helper install

      The helper must be running before launching your iOS Simulator app.
      On first launch, macOS will prompt you to allow Bluetooth access.
    EOS
  end

  def install
    system "make", "helper"
    libexec.install "impossible-helper.app"
    bin.install "bin/impossible-helper"
  end

  test do
    assert_predicate libexec/"impossible-helper.app/Contents/MacOS/impossible-helper", :executable?
    assert_predicate bin/"impossible-helper", :executable?
  end
end
