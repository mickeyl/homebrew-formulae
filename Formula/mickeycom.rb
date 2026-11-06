class Mickeycom < Formula
  desc "Modern serial terminal with bottom-anchored TUI and ESC+: command mode"
  homepage "https://github.com/mickeyl/mickeycom"
  url "ssh://git@github.com/mickeyl/mickeycom.git",
      using:    :git,
      tag:      "v0.9.2",
      revision: "c674bad132d054d8c9e7065e7df4d217e263c871"
  version "0.9.2"
  license "MIT"
  head "https://github.com/mickeyl/mickeycom.git", branch: "master"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", "-DBUILD_TESTING=OFF", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcom --version")
    system bin/"mcom", "--help"
  end
end
