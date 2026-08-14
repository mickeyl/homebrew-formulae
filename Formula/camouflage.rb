class Camouflage < Formula
  desc "Mock and passthrough camera input for the iOS Simulator"
  homepage "https://github.com/mickeyl/CAMouflage"
  url "https://github.com/mickeyl/CAMouflage/archive/refs/tags/0.4.0.tar.gz"
  sha256 "1c2cc0c445b9380d164b60b8ecbe02ccca9f11c882906c8d8abe9b3f8654c5cb"
  license "MIT"
  head "https://github.com/mickeyl/CAMouflage.git", branch: "master"

  depends_on macos: :sequoia

  def install
    system "make", "mock"
    libexec.install "CAMouflage-Mock.app"
  end

  def caveats
    <<~EOS
      Start the CAMouflage provider with:
        open #{opt_libexec}/CAMouflage-Mock.app

      Add https://github.com/mickeyl/CAMouflage as a Swift package dependency
      to the iOS app you want to run in the Simulator.

      On first use of Passthrough mode, macOS will prompt you to allow camera
      access. The bundle is ad-hoc signed when no Developer ID is available;
      this is sufficient for a local Homebrew installation.
    EOS
  end

  test do
    assert_predicate libexec/"CAMouflage-Mock.app/Contents/MacOS/CAMouflage-Mock", :executable?
  end
end
