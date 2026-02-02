class EcuconnectTool < Formula
  desc "ECU Connection Tool for macOS"
  homepage "https://github.com/Automotive-Swift/Swift-CANyonero"
  url "https://github.com/Automotive-Swift/Swift-CANyonero/archive/refs/tags/0.8.tar.gz"
  version "0.8"
  sha256 "1b29112b9f7d6ae537f152623230b40da24a4664f244f13a4e223febe5794561"
  license "MIT"
  head "https://github.com/Automotive-Swift/Swift-CANyonero.git", branch: "master"

  depends_on xcode: ["14", :build]
  depends_on :macos

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/ecuconnect-tool"
  end

  test do
    system bin/"ecuconnect-tool", "--help"
  end
end
