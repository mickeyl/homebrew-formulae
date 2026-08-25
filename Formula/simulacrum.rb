class Simulacrum < Formula
  desc "Fill a fresh iOS Simulator with fake contacts, events, and photos"
  homepage "https://github.com/mickeyl/Simulacrum"
  url "https://github.com/mickeyl/Simulacrum/archive/refs/tags/0.1.1.tar.gz"
  sha256 "e92bf669ec7de470dec98f704eef69c3915617358cd2bad7f22b60884749eb8e"
  license "MIT"
  head "https://github.com/mickeyl/Simulacrum.git", branch: "master"

  depends_on macos: :sequoia
  # Full Xcode, not just the CLT: the bundled SeedAgent is cross-compiled
  # against the iphonesimulator SDK, which superenv's CLT toolchain lacks.
  depends_on xcode: :build

  def install
    system "make", "mac"
    libexec.install "Simulacrum-Mac.app"
  end

  def caveats
    <<~EOS
      Start the app with:
        open #{opt_libexec}/Simulacrum-Mac.app

      Boot an iOS Simulator, open the menu bar panel, and click Seed —
      unlike its Simsalabim siblings there is nothing to link into the app
      under test. The built-in fixture writes 45 contacts, four weeks of
      calendar, a dozen reminders, and placeholder photos through the
      simulator's own frameworks; edit it in the panel if you need custom
      data.

      Don't run Simulacrum and the Simsalabim suite at once — they share
      one socket; the ownership guard lets the first binder win.
    EOS
  end

  test do
    assert_predicate libexec/"Simulacrum-Mac.app/Contents/MacOS/Simulacrum-Mac", :executable?
  end
end
