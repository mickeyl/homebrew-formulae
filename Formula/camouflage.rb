class Camouflage < Formula
  desc "Mock and passthrough camera input for the iOS Simulator"
  homepage "https://github.com/mickeyl/CAMouflage"
  url "https://github.com/mickeyl/CAMouflage/archive/refs/tags/0.5.0.tar.gz"
  sha256 "2564204c449c4a724d2cd78bb4dad6d5a0c1e28ee23b8d403097f4d29dff171f"
  license "MIT"
  head "https://github.com/mickeyl/CAMouflage.git", branch: "master"

  depends_on macos: :sequoia

  def install
    system "make", "mac"
    libexec.install "CAMouflage-Mac.app"
  end

  def caveats
    <<~EOS
      Start the CAMouflage provider with:
        open #{opt_libexec}/CAMouflage-Mac.app

      Add https://github.com/mickeyl/CAMouflage as a Swift package dependency
      to the iOS app you want to run in the Simulator.

      On first use of Passthrough mode, macOS will prompt you to allow camera
      access. The bundle is ad-hoc signed when no Developer ID is available;
      this is sufficient for a local Homebrew installation.
    EOS
  end

  test do
    assert_predicate libexec/"CAMouflage-Mac.app/Contents/MacOS/CAMouflage-Mac", :executable?
  end
end
