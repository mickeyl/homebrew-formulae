class Cancorder < Formula
  desc "List, sniff, record and diagnose CAN buses; built for scripts and LLM agents"
  homepage "https://github.com/Vanille-Media/CANsole"
  url "ssh://git@github.com/Vanille-Media/CANsole.git",
      using:    :git,
      tag:      "cancorder-0.1.745",
      revision: "d5d0c80a3c261045915d741ff4a09eb76f7b3fcb"
  version "0.1.745"
  license :cannot_represent

  depends_on "cmake" => :build
  depends_on :macos

  def install
    # The version counts commits, and a Homebrew stage has no history to count.
    system "cmake", "-S", "packages/cpp", "-B", "build",
           "-DECUM_BUILD_TESTS=OFF",
           "-DECUM_ENABLE_CCACHE=OFF",
           "-DECUM_VERSION_REVISION=#{version.patch}",
           *std_cmake_args
    system "cmake", "--build", "build", "--target", "cancorder"
    bin.install "build/cancorder"
    man1.install "packages/cpp/man/man1/cancorder.1"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cancorder --version")
    # The write guard refuses before any adapter is touched, so this runs
    # without hardware.
    output = shell_output("#{bin}/cancorder request -i gs_usb --tx 7E0 1101 2>&1", 2)
    assert_match "--allow-write", output
  end
end
