class CoreBluetoothTool < Formula
  desc "Bluetooth Low Energy Tool for macOS"
  homepage "https://www.Vanille.de"
  url "https://github.com/mickeyl/core-bluetooth-tool/archive/refs/tags/0.5.1.tar.gz"
  sha256 "d814ac6959f97dc5ee0ee5105efd95e8f09e3dee40956f1b0e8cbf50215856c0"
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
