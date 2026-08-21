class Lsusd < Formula
  include Language::Python::Virtualenv

  desc "List USB devices with their associated USB metadata"
  homepage "https://github.com/mickeyl/lsusd"
  url "https://github.com/mickeyl/lsusd/archive/refs/tags/v2.1.1.tar.gz"
  sha256 "7f2c19042c7611fba503fc507892e3fa86ca49ac74f6ddd86f13b6523719fe8a"
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
