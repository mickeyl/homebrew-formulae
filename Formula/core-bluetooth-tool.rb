class CoreBluetoothTool < Formula
  desc "Bluetooth Low Energy Tool for macOS"
  homepage "https://www.Vanille.de"
  url "https://github.com/mickeyl/core-bluetooth-tool/archive/refs/tags/0.5.2.tar.gz"
  sha256 "b50fc338f92044eda1a5018b239c3f28917d2a0f8090b8b77ce7a5f63252f034"
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
