# typed: false
# frozen_string_literal: true

# :nodoc:
class Ecumulator < Formula
  desc "Electronic Control Module Emulator for macOS and Linux"
  homepage "https://www.Vanille.de"
  url "https://git.drlauer-research.com:3000/mickey/ECUmulator.git"
  head "https://git.drlauer-research.com:3000/mickey/ECUmulator.git", :tag => "0.5.4"
  version "0.5.4"

  depends_on xcode: ["13", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system bin/"ECUmulator", "--help"
  end
end
