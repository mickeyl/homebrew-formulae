class CoreBluetoothTool < Formula
  desc "Bluetooth Low Energy Tool for macOS"
  homepage "https://www.Vanille.de"
  url "https://github.com/mickeyl/core-bluetooth-tool/archive/refs/tags/0.5.3.tar.gz"
  sha256 "cff49dd58d0727d24810e5c3f61f8808ee1f3840f94ebd9c32956dcf4a0f3504"
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
