class Mickeycom < Formula
  desc "Modern serial terminal with bottom-anchored TUI and ESC+: command mode"
  homepage "https://github.com/mickeyl/mickeycom"
  url "ssh://git@github.com/mickeyl/mickeycom.git",
      using:    :git,
      tag:      "v0.9.0",
      revision: "09599d1fe587ae117cc0c1f9a5ad2cd956d4a3a6"
  version "0.9.0"
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
