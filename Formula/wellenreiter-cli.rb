class WellenreiterCli < Formula
  desc "Terminal radio picker and stream debugger for Wellenreiter"
  homepage "https://gitlab.com/vanille-apps/radio"
  url "ssh://git@gitlab.com/vanille-apps/radio.git",
      branch: "master"
  version "3.0.1250"
  license :cannot_represent
  head "ssh://git@gitlab.com/vanille-apps/radio.git", branch: "master"

  depends_on :macos

  def install
    system "make", "install", "prefix=#{prefix}",
           "SWIFT_BUILD_FLAGS=--quiet --disable-sandbox -Xswiftc -suppress-warnings"
  end

  test do
    assert_match "wellenreiter-cli", shell_output("#{bin}/wellenreiter-cli help")
    assert_path_exists lib/"ogg.framework"
    assert_path_exists lib/"vorbis.framework"
    assert_path_exists pkgshare/"tools/wellenreiter-tui.py"
    assert_path_exists pkgshare/"manifest/stations.json"
  end
end
