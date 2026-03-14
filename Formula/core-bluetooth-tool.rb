class CoreBluetoothTool < Formula
  desc "Bluetooth Low Energy Tool for macOS"
  homepage "https://www.Vanille.de"
  url "https://github.com/mickeyl/core-bluetooth-tool/archive/refs/tags/0.5.2.tar.gz"
  sha256 "a791cd8e03657ec0e2824258b5dac5398abbb2707e3a2035604cd050c7872679"
  license "MIT"
  head "https://github.com/mickeyl/core-bluetooth-tool.git", branch: "master"

  depends_on :macos

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system bin/"core-bluetooth-tool", "--help"
  end
end
