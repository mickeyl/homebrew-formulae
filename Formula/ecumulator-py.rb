class EcumulatorPy < Formula
  include Language::Python::Virtualenv

  desc "ECU emulation and automotive diagnostic tooling"
  homepage "https://gitlab.com/a11086/ECumulator.py"
  url "ssh://git@gitlab.com/a11086/ECumulator.py.git",
      using: :git,
      tag: "0.5.0",
      revision: "fb33685bf8f21e54c342ae00e48ca2c78c075aa4"
  version "0.5.0"
  license "Proprietary"

  depends_on "python@3.12"

  resource "textual" do
    url "https://files.pythonhosted.org/packages/source/t/textual/textual-7.4.0.tar.gz"
    sha256 "1a9598e485492f9a8f033c7ec5e59528df3ab0742fda925681acf78b0fb210de"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/source/r/rich/rich-14.3.1.tar.gz"
    sha256 "b8c5f568a3a749f9290ec6bddedf835cec33696bfc1e48bcfecb276c7386e4b8"
  end

  resource "watchdog" do
    url "https://files.pythonhosted.org/packages/source/w/watchdog/watchdog-6.0.0.tar.gz"
    sha256 "9ddf7c82fda3ae8e24decda1338ede66e1c99883db93711d8fb941eaa2d8c282"
  end

  resource "python-can" do
    url "https://files.pythonhosted.org/packages/source/p/python-can/python_can-4.6.1.tar.gz"
    sha256 "290fea135d04b8504ebff33889cc6d301e2181a54099116609f940825ffe5005"
  end

  resource "lz4" do
    url "https://files.pythonhosted.org/packages/source/l/lz4/lz4-4.4.5.tar.gz"
    sha256 "5f0b9e53c1e82e88c10d7c180069363980136b9d7a8306c4dca4f760d60c39f0"
  end

  resource "zeroconf" do
    url "https://files.pythonhosted.org/packages/source/z/zeroconf/zeroconf-0.148.0.tar.gz"
    sha256 "03fcca123df3652e23d945112d683d2f605f313637611b7d4adf31056f681702"
  end

  resource "cancorder-utils" do
    url "https://github.com/Automotive-Swift/CANcorder.git",
        using: :git,
        tag: "v0.1.1",
        revision: "6d2a4d847f3ca1cf97582e9d6f91d865ca461266"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/epy", "version"
  end
end
