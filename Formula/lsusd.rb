class Lsusd < Formula
  include Language::Python::Virtualenv

  desc "List USB serial devices with their associated USB metadata"
  homepage "https://github.com/mickeyl/lsusd"
  url "https://github.com/mickeyl/lsusd/archive/refs/tags/1.0.0.tar.gz"
  version "1.0.0"
  sha256 "70fbfd685a5a843d5ec546c3274009db19dc104b0f052fbcf3113c7fe2ae77e9"
  license "MIT"
  head "https://github.com/mickeyl/lsusd.git", branch: "main"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    output = shell_output("#{bin}/lsusd")
    assert_match(/USB|No USB serial devices found/, output)
  end
end
