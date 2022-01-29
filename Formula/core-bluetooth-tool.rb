# typed: false
# frozen_string_literal: true

# :nodoc:
class CoreBluetoothTool < Formula
  desc "Bluetooth Low Energy Tool for macOS"
  homepage "https://github.com/mickeyl/core-bluetooth-tool"
  url "https://github.com/mickeyl/core-bluetooth-tool.git", tag: "0.2.1", revision: "9a1317f01b353fbd844e3811ba4ccd7c56892d9b"

  license "MIT"

  head "https://github.com/mickeyl/", shallow: false

  depends_on xcode: ["13.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system bin/"core-bluetooth-tool", "--help"
  end
end
