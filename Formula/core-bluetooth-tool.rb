class CoreBluetoothTool < Formula
  desc "Bluetooth Low Energy Tool for macOS"
  homepage "https://www.Vanille.de"
  url "https://github.com/mickeyl/core-bluetooth-tool.git"
  head "https://github.com/mickeyl/core-bluetooth-tool.git", :tag => "0.4.1"
  version "0.4.1"

  license "MIT"

  head "https://github.com/mickeyl/", shallow: false

  depends_on xcode: ["15.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system bin/"core-bluetooth-tool", "--help"
  end
end
