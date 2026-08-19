class Nfcromancer < Formula
  desc "Real NFC hardware access from the iOS Simulator"
  homepage "https://github.com/mickeyl/NFCromancer"
  url "https://github.com/mickeyl/NFCromancer/archive/refs/tags/0.1.0.tar.gz"
  sha256 "2eeee0c7efcf4788d2e0aab072baa97fd2c6fc6fd3a9e4477d6e92f105e2d4fb"
  license "MIT"
  head "https://github.com/mickeyl/NFCromancer.git", branch: "master"

  depends_on macos: :sequoia

  def install
    system "make", "mac"
    libexec.install "NFCromancer-Mac.app"
  end

  def caveats
    <<~EOS
      Start the provider with:
        open #{opt_libexec}/NFCromancer-Mac.app

      Add https://github.com/mickeyl/NFCromancer as a Swift package dependency
      to the iOS app you want to run in the Simulator.

      Select Mock (virtual NFC tags) or Passthrough (a real USB reader, ACR122U)
      in its menu bar panel. Passthrough needs the smartcard entitlement, which
      this formula bakes into the ad-hoc signature; that is enough for a local
      Homebrew installation. Re-signing with your own Developer ID is only
      required if you want to redistribute the bundle.
    EOS
  end

  test do
    assert_predicate libexec/"NFCromancer-Mac.app/Contents/MacOS/NFCromancer-Mac", :executable?
  end
end
