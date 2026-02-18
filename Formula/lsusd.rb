class Lsusd < Formula
  include Language::Python::Virtualenv

  desc "List USB serial devices with their associated USB metadata"
  homepage "https://github.com/mickeyl/lsusd"
  url "https://github.com/mickeyl/lsusd/archive/refs/tags/1.0.2.tar.gz"
  version "1.0.2"
  sha256 "d30735e178820571d80890031a3cfbbd1c32dec9463b91d555662f8249f0420c"
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
