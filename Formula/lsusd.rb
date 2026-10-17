class Lsusd < Formula
  include Language::Python::Virtualenv

  desc "List USB devices with their associated USB metadata"
  homepage "https://github.com/mickeyl/lsusd"
  url "https://github.com/mickeyl/lsusd/archive/refs/tags/v2.1.2.tar.gz"
  sha256 "9e16a69e26378bfd6046248f74e6b3bf580ccd38d210e333bb67dceb2087abd2"
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
