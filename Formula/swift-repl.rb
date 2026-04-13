class SwiftRepl < Formula
  desc "Launch a Swift REPL with modules from local Swift packages"
  homepage "https://github.com/mickeyl/swift-repl"
  url "https://github.com/mickeyl/swift-repl/archive/refs/tags/1.0.0.tar.gz"
  version "1.0.0"
  sha256 "cd3324542762fabe1d245c6d2b62187d40bc850004614ad6c85e81947e7d6030"
  license "MIT"
  head "https://github.com/mickeyl/swift-repl.git", branch: "master"

  depends_on "python@3"

  def install
    bin.install "swift-repl"
  end

  test do
    assert_match "swift-repl #{version}", shell_output("#{bin}/swift-repl --version")
  end
end
