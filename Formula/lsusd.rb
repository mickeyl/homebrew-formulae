class Lsusd < Formula
  include Language::Python::Virtualenv

  desc "List USB devices with their associated USB metadata"
  homepage "https://github.com/mickeyl/lsusd"
  url "https://github.com/mickeyl/lsusd/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "5bf8b74a1eb1b5de7c3b60311d9ca8b9a2cd645441f62e80520a042ab3fe3d5d"
  license "MIT"
  head "https://github.com/mickeyl/lsusd.git", branch: "main"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
    man1.install "lsusd.1"
  end

  test do
    output = shell_output(bin/"lsusd")
    assert_match(/USB|No USB devices found/, output)
  end
end
