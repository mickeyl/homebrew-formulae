class Impossible < Formula
  desc "Real BLE hardware access from the iOS Simulator"
  homepage "https://github.com/mickeyl/ImpossiBLE"
  url "https://github.com/mickeyl/ImpossiBLE/archive/refs/tags/3.1.0.tar.gz"
  sha256 "867981931a66e0738f96309844a322461944120c4239221c564ffc13c9e7ae69"
  license "MIT"
  head "https://github.com/mickeyl/ImpossiBLE.git", branch: "master"

  depends_on macos: :sequoia

  def install
    system "make", "mac"
    libexec.install "ImpossiBLE-Mac.app"
  end

  def caveats
    <<~EOS
      Start the provider with:
        open #{opt_libexec}/ImpossiBLE-Mac.app

      Select Mock (virtual BLE peripherals) or Passthrough (real Mac
      Bluetooth) in its menu bar panel. On first Passthrough use, macOS
      will prompt you to allow Bluetooth access.

      Since 3.0.0 there is no separate impossible-helper anymore — the
      Mac app is the single provider for both modes. A leftover helper
      from an earlier install can be removed with:
        rm -rf ~/.local/bin/impossible-helper{,.app}
        launchctl unload ~/Library/LaunchAgents/de.tpe-europe.impossible-helper.plist 2>/dev/null
        rm -f ~/Library/LaunchAgents/de.tpe-europe.impossible-helper.plist

      The bundle is ad-hoc signed by this formula. That is enough for
      Gatekeeper to launch it locally because Homebrew installs do not
      apply the quarantine attribute. Re-signing with your own Developer
      ID is only required if you want to redistribute the bundle.
    EOS
  end

  test do
    assert_predicate libexec/"ImpossiBLE-Mac.app/Contents/MacOS/ImpossiBLE-Mac", :executable?
  end
end
