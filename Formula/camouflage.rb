class Camouflage < Formula
  desc "Mock and passthrough camera input for the iOS Simulator"
  homepage "https://github.com/mickeyl/CAMouflage"
  url "https://github.com/mickeyl/CAMouflage/archive/refs/tags/0.3.0.tar.gz"
  sha256 "b211f21cb608b47418ba351c46db9174fcbefd3691fdc3f27c5115a3c9e8df47"
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
