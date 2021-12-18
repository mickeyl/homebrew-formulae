# typed: false
# frozen_string_literal: true

# :nodoc:
class ELMpersonator < Formula
  desc "Electronic Control Module Emulator for macOS and Linux"
  homepage "https://github.com/Automotive-Swift/ELMpersonator"
  url "https://github.com/Automotive-Swift/ELMpersonator.git", tag: "0.5.0", revision: "0fb7ba142c4c9d68644daf16a3f5cf854e883891"

  license "MIT"

  head "https://github.com/mickeyl/", shallow: false

  depends_on xcode: ["13", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system bin/"ELMpersonator", "--help"
  end
end
