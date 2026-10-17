class Lsusd < Formula
  include Language::Python::Virtualenv

  desc "List USB devices with their associated USB metadata"
  homepage "https://github.com/mickeyl/lsusd"
  url "https://github.com/mickeyl/lsusd/archive/refs/tags/v2.1.3.tar.gz"
  version "2.1.3"
  sha256 "19c8bb2c3ffe8de6e1f08ae7f2a2c92d66f21c10452d71565946ae3c10c8e18a"
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
