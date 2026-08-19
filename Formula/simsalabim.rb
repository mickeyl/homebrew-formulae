class Simsalabim < Formula
  desc "Retrofit the iOS Simulator with real BLE, camera, and NFC hardware"
  homepage "https://github.com/mickeyl/Simsalabim"
  # Git strategy (not the tarball) so Homebrew clones the ImpossiBLE,
  # CAMouflage, and NFCromancer submodules — GitHub's archive tarballs omit
  # submodule contents, which the suite build needs.
  url "https://github.com/mickeyl/Simsalabim.git",
      tag:      "0.1.0",
      revision: "6c241d3ef5f13b4b3f74cfa69127007abeaa836e"
  license "MIT"
  head "https://github.com/mickeyl/Simsalabim.git", branch: "master"

  depends_on macos: :sequoia

  def install
    system "make", "suite"
    libexec.install "Simsalabim.app"
  end

  def caveats
    <<~EOS
      Start the suite with:
        open #{opt_libexec}/Simsalabim.app

      Simsalabim is the umbrella app for the three providers — ImpossiBLE
      (Bluetooth), CAMouflage (camera), and NFCromancer (NFC) — in one menu
      bar process. Each module has its own Off / Mock / Passthrough control.
      On first Passthrough use, macOS prompts for Bluetooth and camera access;
      NFC passthrough needs a USB reader (ACR122U).

      The bundle is ad-hoc signed by this formula with the union of the three
      modules' entitlements; that is enough for a local Homebrew installation.
    EOS
  end

  test do
    assert_predicate libexec/"Simsalabim.app/Contents/MacOS/Simsalabim", :executable?
  end
end
