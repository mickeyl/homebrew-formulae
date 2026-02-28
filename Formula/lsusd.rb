class Lsusd < Formula
  include Language::Python::Virtualenv

  desc "List USB serial devices with their associated USB metadata"
  homepage "https://github.com/mickeyl/lsusd"
  url "https://github.com/mickeyl/lsusd/archive/refs/tags/v1.0.3.tar.gz"
  version "1.0.3"
  sha256 "ef52ac45ae9e07722075ff02bfa0c7526cd343398904cb767ee5b921508fb8d6"
  license "MIT"
  head "https://github.com/mickeyl/lsusd.git", branch: "main"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
    man1.install "lsusd.1"
  end

  test do
    output = shell_output("#{bin}/lsusd")
    assert_match(/USB|No USB serial devices found/, output)
  end
end
