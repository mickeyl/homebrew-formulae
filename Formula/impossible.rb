class Impossible < Formula
  desc "Real BLE hardware access from the iOS Simulator"
  homepage "https://github.com/mickeyl/ImpossiBLE"
  url "https://github.com/mickeyl/ImpossiBLE/archive/refs/tags/2.1.1.tar.gz"
  sha256 "49030b71f548cbb306e530ebf946b9e85c26b00245827288980be095d3c1acec"
  license "MIT"
  head "https://github.com/mickeyl/ImpossiBLE.git", branch: "master"

  depends_on macos: :sequoia

  def install
    system "make", "helper", "mock"
    libexec.install "impossible-helper.app"
    libexec.install "ImpossiBLE-Mock.app"
    bin.install "bin/impossible-helper"
  end

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

      For configurable virtual BLE peripherals instead of real hardware:
        open #{opt_libexec}/ImpossiBLE-Mock.app

      Both bundles are ad-hoc signed by this formula. That is enough for
      Gatekeeper to launch them locally because Homebrew installs do not
      apply the quarantine attribute. Re-signing with your own Developer
      ID is only required if you want to redistribute the bundles.
    EOS
  end

  test do
    assert_predicate libexec/"impossible-helper.app/Contents/MacOS/impossible-helper", :executable?
    assert_predicate libexec/"ImpossiBLE-Mock.app/Contents/MacOS/ImpossiBLE-Mock", :executable?
    assert_predicate bin/"impossible-helper", :executable?
  end
end
