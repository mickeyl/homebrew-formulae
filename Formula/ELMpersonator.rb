# typed: false
# frozen_string_literal: true

# :nodoc:
class Elmpersonator < Formula
  desc "ELM327 Impersonator for macOS and Linux"
  homepage "https://github.com/Automotive-Swift/ELMpersonator"
  url "https://github.com/Automotive-Swift/ELMpersonator.git", tag: "0.5.0", revision: "e169164e0c4d01e89819a5e90482fa00a9481bda"

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
