# typed: false
# frozen_string_literal: true

# :nodoc:
class CoreBluetoothTool < Formula
  desc "Bluetooth Low Energy Tool for macOS"
  homepage "https://github.com/mickeyl/core-bluetooth-tool"
  url "https://github.com/mickeyl/core-bluetooth-tool.git", tag: "0.1.0", revision: "a58289da93c174f4a57bf459bdddc73b767bf99c"

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
