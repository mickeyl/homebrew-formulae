class Lsusd < Formula
  include Language::Python::Virtualenv

  desc "List USB serial devices with their associated USB metadata"
  homepage "https://github.com/mickeyl/lsusd"
  url "https://github.com/mickeyl/lsusd/archive/refs/tags/v1.1.0.tar.gz"
  version "1.1.0"
  sha256 "cbf7d4bb49bf6b39838bcd9f0153e37e28075c6cf5f9781d9b908309991f3de4"
  license "MIT"
  head "https://github.com/mickeyl/lsusd.git", branch: "main"

  depends_on "python@3.14"

  on_linux do
    odie <<~EOS
      lsusd is best installed via pipx on Linux:
        pipx install lsusd
    EOS
  end

  def install
    virtualenv_install_with_resources
    man1.install "lsusd.1"
  end

  test do
    output = shell_output("#{bin}/lsusd")
    assert_match(/USB|No USB serial devices found/, output)
  end
end
