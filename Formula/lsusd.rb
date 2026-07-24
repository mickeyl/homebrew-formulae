class Lsusd < Formula
  include Language::Python::Virtualenv

  desc "List USB devices with their associated USB metadata"
  homepage "https://github.com/mickeyl/lsusd"
  url "https://github.com/mickeyl/lsusd/archive/refs/tags/v2.1.0.tar.gz"
  sha256 "da83dacf90d24fe5b7c11c1e61807050ab690a6e523d1580105e2f4fbea9825c"
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
