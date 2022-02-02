# typed: false
# frozen_string_literal: true

# :nodoc:
class CoreBluetoothTool < Formula
  desc "Bluetooth Low Energy Tool for macOS"
  homepage "https://github.com/mickeyl/core-bluetooth-tool"
  url "https://github.com/mickeyl/core-bluetooth-tool.git", tag: "0.3.0", revision: "7e990d0e98dce9f708c263244e3fce0fb5c253f2"

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
