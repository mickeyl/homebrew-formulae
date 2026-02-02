class EcuconnectTool < Formula
  desc "ECU Connection Tool for macOS"
  homepage "https://github.com/Automotive-Swift/Swift-CANyonero"
  url "https://github.com/Automotive-Swift/Swift-CANyonero/archive/refs/tags/0.7.0.tar.gz"
  version "0.7.0"
  sha256 "7672cb6951c8a873614511fe35a0ec7e0b6e80991b844d9db7bfe6180218af45"
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
