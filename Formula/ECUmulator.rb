# typed: false
# frozen_string_literal: true

# :nodoc:
class ECUmulator < Formula
  desc "Electronic Control Module Emulator for macOS and Linux"
  homepage "https://github.com/Automotive-Swift/ECUmulator"
  url "https://github.com/Automotive-Swift/ECUmulator.git", tag: "0.5.0", revision: "dffd86469f5360c1b8b59f27cd15c7ced8f25753"

  license "MIT"

  head "https://github.com/mickeyl/", shallow: false

  depends_on xcode: ["13", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system bin/"ECUmulator", "--help"
  end
end
