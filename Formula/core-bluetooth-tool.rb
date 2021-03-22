# typed: false
# frozen_string_literal: true

# :nodoc:
class CoreBluetoothTool < Formula
  desc "Bluetooth Low Energy Tool for macOS"
  homepage "https://github.com/mickeyl/core-bluetooth-tool"
  url "https://github.com/mickeyl/core-bluetooth-tool.git", tag: "0.1.0", revision: "105dcbf3aedd8c60e6bca793025d4553499fb2a0"

  license "MIT"

  head "https://github.com/mickeyl/", shallow: false

  depends_on xcode: ["12.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system bin/"core-bluetooth-tool", "--help"
  end
end
