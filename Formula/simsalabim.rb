class Simsalabim < Formula
  desc "Retrofit the iOS Simulator with BLE, camera, NFC, and seeded data"
  homepage "https://github.com/mickeyl/Simsalabim"
  # Git strategy (not the tarball) so Homebrew clones the product submodules —
  # GitHub's archive tarballs omit submodule contents, which the suite build
  # needs.
  url "https://github.com/mickeyl/Simsalabim.git",
      tag:      "0.4.0",
      revision: "bc930ce5e0e86eb66d3b1c394f253f91c8fcb1d8"
  license "MIT"
  head "https://github.com/mickeyl/Simsalabim.git", branch: "master"

  depends_on macos: :sequoia
  # Full Xcode, not just the CLT: Simulacrum's bundled SeedAgent is
  # cross-compiled against the iphonesimulator SDK, which superenv's CLT
  # toolchain lacks.
  depends_on xcode: :build

  def install
    system "make", "suite"
    libexec.install "Simsalabim.app"
  end

  def caveats
    <<~EOS
      Start the suite with:
        open #{opt_libexec}/Simsalabim.app

      Simsalabim is the umbrella app for the four providers — ImpossiBLE
      (Bluetooth), CAMouflage (camera), NFCromancer (NFC), and Simulacrum
      (seeded Contacts/Calendar/Reminders/Photos data) — in one menu bar
      process. The hardware modules have their own Off / Mock / Passthrough
      control; Simulacrum just has a Seed button. On first Passthrough use,
      macOS prompts for Bluetooth and camera access; NFC passthrough needs a
      USB reader (ACR122U).

      Don't run Simsalabim and a standalone provider for the same modality at
      once — they share one socket; the ownership guard lets the first binder
      win and shows Blocked in the other app.

      The bundle is ad-hoc signed by this formula with the union of the
      modules' entitlements; that is enough for a local Homebrew installation.
    EOS
  end

  test do
    assert_predicate libexec/"Simsalabim.app/Contents/MacOS/Simsalabim", :executable?
  end
end
