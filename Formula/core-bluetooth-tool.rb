class CoreBluetoothTool < Formula
  desc "Bluetooth Low Energy Tool for macOS"
  homepage "https://www.Vanille.de"
  url "https://github.com/mickeyl/core-bluetooth-tool/archive/refs/tags/0.4.2.tar.gz"
  sha256 "f3844f18174b89ff120595f76d6005ce8a8c78b77e397584cd4b124b76f05053"
  version "0.4.2"
  head "https://github.com/mickeyl/core-bluetooth-tool.git", branch: "master"

  license "MIT"

  depends_on :macos

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system bin/"core-bluetooth-tool", "--help"
  end
end
