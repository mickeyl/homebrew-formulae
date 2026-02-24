class EcuconnectTool < Formula
  include Language::Python::Virtualenv

  desc "ECUconnect CLI for CANyonero adapters"
  homepage "https://github.com/Automotive-Swift/Swift-CANyonero"
  url "https://github.com/Automotive-Swift/Swift-CANyonero/archive/refs/tags/0.9.1.tar.gz"
  version "0.9.1"
  sha256 "61f1728b8036caa4bf4ed6d2962a84861ccf347340793acc173e2db1a67b87d6"
  license "MIT"
  head "https://github.com/Automotive-Swift/Swift-CANyonero.git", branch: "master"

  depends_on "cmake" => :build
  depends_on "python@3.12"

  resource "annotated-doc" do
    url "https://files.pythonhosted.org/packages/57/ba/046ceea27344560984e26a590f90bc7f4a75b06701f653222458922b558c/annotated_doc-0.0.4.tar.gz"
    sha256 "fbcda96e87e9c92ad167c2e53839e57503ecfda18804ea28102353485033faa4"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/3d/fa/656b739db8587d7b5dfa22e22ed02566950fbfbcdc20311993483657a5c0/click-8.3.1.tar.gz"
    sha256 "12ff4785d337a1bb490bb7e9c2b1ee5da3112e94a8622f26a6c77f5d2fc6842a"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/5b/f5/4ec618ed16cc4f8fb3b701563655a69816155e79e24a17b651541804721d/markdown_it_py-4.0.0.tar.gz"
    sha256 "cb0a2b4aa34f932c007117b194e945bd74e0ec24133ceb5bac59009cda1cb9f3"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/65/ee/299d360cdc32edc7d2cf530f3accf79c4fca01e96ffc950d8a52213bd8e4/packaging-26.0.tar.gz"
    sha256 "00243ae351a257117b6a241061796684b084ed1c516a08c48a3f7e147a9d80b4"
  end

  resource "pathspec" do
    url "https://files.pythonhosted.org/packages/fa/36/e27608899f9b8d4dff0617b2d9ab17ca5608956ca44461ac14ac48b44015/pathspec-1.0.4.tar.gz"
    sha256 "0210e2ae8a21a9137c0d470578cb0e595af87edaa6ebf12ff176f14a02e0e645"
  end

  resource "pybind11" do
    url "https://files.pythonhosted.org/packages/a5/98/9118a0659646f1628c592ef9bb48e0056efa6bf27c951fd12a178e0136fb/pybind11-3.0.2.tar.gz"
    sha256 "432f01aeb68e361a3a7fc7575c2c7f497595bf640f747acd909ff238dd766e06"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/b0/77/a5b8c569bf593b0140bde72ea885a803b82086995367bf2037de0159d924/pygments-2.19.2.tar.gz"
    sha256 "636cb2477cec7f8952536970bc533bc43743542f70392ae026374600add5b887"
  end

  resource "python-can" do
    url "https://files.pythonhosted.org/packages/74/f9/a9d99d36dd33be5badb747801c9255c3c526171a5542092eaacc73350fb8/python_can-4.6.1.tar.gz"
    sha256 "290fea135d04b8504ebff33889cc6d301e2181a54099116609f940825ffe5005"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/b3/c6/f3b320c27991c46f43ee9d856302c70dc2d0fb2dba4842ff739d5f46b393/rich-14.3.3.tar.gz"
    sha256 "b8daa0b9e4eef54dd8cf7c86c03713f53241884e814f4e2f5fb342fe520f639b"
  end

  resource "scikit-build-core" do
    url "https://files.pythonhosted.org/packages/48/b2/c11aaa746f3dfcdb46499affbc5f9784c991d354a80ca92f96a0f0f5aadf/scikit_build_core-0.11.6.tar.gz"
    sha256 "5982ccd839735be99cfd3b92a8847c6c196692f476c215da84b79d2ad12f9f1b"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/58/15/8b3609fd3830ef7b27b655beb4b4e9c62313a4e8da8c676e142cc210d58e/shellingham-1.5.4.tar.gz"
    sha256 "8dbca0739d487e5bd35ab3ca4b36e11c4078f3a234bfce294b0a0291363404de"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/f5/24/cb09efec5cc954f7f9b930bf8279447d24618bb6758d4f6adf2574c41780/typer-0.24.1.tar.gz"
    sha256 "e39b4732d65fbdcde189ae76cf7cd48aeae72919dea1fdfc16593be016256b45"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/72/94/1a15dd82efb362ac84269196e94cf00f187f7ed21c242792a923cdb1c61f/typing_extensions-4.15.0.tar.gz"
    sha256 "0cea48d173cc12fa28ecabc3b837ea3cf6f38c6d1136f85cbaaf598984861466"
  end

  resource "wrapt" do
    url "https://files.pythonhosted.org/packages/95/8f/aeb76c5b46e273670962298c23e7ddde79916cb74db802131d49a85e4b7d/wrapt-1.17.3.tar.gz"
    sha256 "f66eb08feaa410fe4eebd17f2a2c8e2e46d3476e9f8c783daa8e09e0faa666d0"
  end

  def install
    ENV["PIP_NO_BUILD_ISOLATION"] = "1"
    venv = virtualenv_create(libexec, "python3.12")
    venv.pip_install resources

    cd "python/ecuconnect_tool" do
      venv.pip_install_and_link "."
    end
  end

  test do
    output = shell_output("#{bin}/ecuconnect-tool --help")
    assert_match "ECUconnect tool (Python)", output
    assert_match "login", output
  end
end
