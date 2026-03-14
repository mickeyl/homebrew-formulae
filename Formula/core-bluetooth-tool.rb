class CoreBluetoothTool < Formula
  desc "Bluetooth Low Energy Tool for macOS"
  homepage "https://www.Vanille.de"
  url "https://github.com/mickeyl/core-bluetooth-tool/archive/refs/tags/0.5.4.tar.gz"
  sha256 "5e15e5248861227f11e0dcd86a170727cbf3b35e9f52c347694cfcd2c9293ca0"
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
