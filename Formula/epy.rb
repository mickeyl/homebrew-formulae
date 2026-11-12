class Epy < Formula
  include Language::Python::Virtualenv

  desc "CANsole spec authoring, import, and diagnostic tools"
  homepage "https://www.cansole.dev/studio/"
  url "https://www.vanille.de/downloads/ECUmulatorStudio/cansole-tools-1.8.1202.tar.gz"
  sha256 "6e51e1b5a88f70e3d69ad3ba44321811d39400b7014f7b78ff8b47f77527f915"
  license :cannot_represent

  depends_on :macos
  depends_on "python@3.14"

  resource "wheel-0" do
    url "https://files.pythonhosted.org/packages/c1/41/629e70c4cb32c1ddb88de970cd174bbb43d8241c8e07bdffc62a8280297c/argparse_addons-0.12.0-py3-none-any.whl"
    sha256 "48b70ecd719054fcb0d7e6f25a1fecc13607aac61d446e83f47d211b4ead0d61"
  end

  resource "wheel-1" do
    url "https://files.pythonhosted.org/packages/88/c6/92fcd42f1ba33e1184263f25bfabf3d27c383410470f169e4b8163bf9c17/beautifulsoup4-4.15.0-py3-none-any.whl"
    sha256 "d6f88de62e1d4e38ecb1077eb9724cd0eff29d2a08ca16a401e9b9e93f117cf9"
  end

  resource "wheel-2" do
    url "https://files.pythonhosted.org/packages/74/68/6aa9c0c0180e2d95a44d56539bf8aa0a2f6e5fd5f09c5a634993eba002a4/bincopy-20.1.1-py3-none-any.whl"
    sha256 "6bbdecbb784beb470bb380c4e262103d2dfaf5ac24fb52ea6202510dbc00b004"
  end

  resource "wheel-3" do
    url "https://files.pythonhosted.org/packages/e4/1e/f1b163783c90ccbad0227de267d899d7283b3174b89f1d66bb7c2a509808/can_isotp-2.0.7-py3-none-any.whl"
    sha256 "28d155dec1c640bf32771fb4e271323d777158ab130372724a8b7b82aca66a7c"
  end

  resource "wheel-4" do
    url "https://files.pythonhosted.org/packages/0a/34/b3a4c7bca18ad95d20d40dde62348ac78369fee14dc8a90c7c3218fd7398/cancorder_utils-0.2.0-py3-none-any.whl"
    sha256 "8fc9e8a65cfc63c4d0d7c082d08264cf3926a6dc89534e3be68096f46d70f740"
  end

  resource "wheel-5" do
    url "https://files.pythonhosted.org/packages/02/c3/253a89ee03fc9b9682f1541728eb66db7db22148cd94f89ab22528cd1e1b/deprecation-2.1.0-py2.py3-none-any.whl"
    sha256 "a10811591210e1fb0e768a8c25517cabeabcba6f0bf96564f8ff45189f90b14a"
  end

  resource "wheel-6" do
    url "https://files.pythonhosted.org/packages/f0/0f/310fb31e39e2d734ccaa2c0fb981ee41f7bd5056ce9bc29b2248bd569169/humanfriendly-10.0-py2.py3-none-any.whl"
    sha256 "1697e1a8a8f550fd43c2865cd84542fc175a61dcb779b6fee18cf6b6ccba1477"
  end

  resource "wheel-7" do
    url "https://files.pythonhosted.org/packages/9c/1f/19ebc343cc71a7ffa78f17018535adc5cbdd87afb31d7c34874680148b32/ifaddr-0.2.0-py3-none-any.whl"
    sha256 "085e0305cfe6f16ab12d72e2024030f5d52674afad6911bb1eee207177b8a748"
  end

  resource "wheel-8" do
    url "https://files.pythonhosted.org/packages/62/a1/3d680cbfd5f4b8f15abc1d571870c5fc3e594bb582bc3b64ea099db13e56/jinja2-3.1.6-py3-none-any.whl"
    sha256 "85ece4451f492d0c13c5dd7c13a64681a86afae63a5f347908daf103ce6d2f67"
  end

  resource "wheel-9" do
    url "https://files.pythonhosted.org/packages/c9/31/5f0ac2f1a1c67423c995c731a11cd4ad05d081a2be969d74f868bdb9cc70/markdown_it_py-4.3.0-py3-none-any.whl"
    sha256 "7aa1511a46c39138de78d9eba92ce47e63124d8003fc98b3a351909e04239efa"
  end

  resource "wheel-10" do
    url "https://files.pythonhosted.org/packages/04/10/fa543d484e8b1199243fe20eedd02cc5af050edebce98a7293a5773df592/markdownify-1.2.3-py3-none-any.whl"
    sha256 "a189a0bedfd14009030fde5f85bb6f77c56897cb839b5c25315dd7d4e3e290ba"
  end

  resource "wheel-11" do
    url "https://files.pythonhosted.org/packages/6c/ab/2f8488f0f817a39fca068d2b17daf446bf5cdb3eae28c3720af534d873b4/markupsafe-3.0.4-cp314-cp314-macosx_10_15_x86_64.whl"
    sha256 "4cf3468d5ec187ffffcaca8e61929a37448f215dafc1386a12c750a72fe53634"
  end

  resource "wheel-12" do
    url "https://files.pythonhosted.org/packages/ad/40/e2d117b048d47282ade906fbfd92814cbee5647afc13fda88a3406039372/markupsafe-3.0.4-cp314-cp314-macosx_11_0_arm64.whl"
    sha256 "52704c5d36eb6dda8866493decd61111fff86244c9b1ad225ca01b9e91e5970f"
  end

  resource "wheel-13" do
    url "https://files.pythonhosted.org/packages/b3/38/89ba8ad64ae25be8de66a6d463314cf1eb366222074cfda9ee839c56a4b4/mdurl-0.1.2-py3-none-any.whl"
    sha256 "84008a41e51615a49fc9966191ff91509e3c40b939176e643fd50a5c2196b8f8"
  end

  resource "wheel-14" do
    url "https://files.pythonhosted.org/packages/29/4b/8b15a59fcbcb78599ee63f4710c2048d30a23518a0e7d364d887e1a61e99/odxtools-11.7.1-py3-none-any.whl"
    sha256 "3f5c1d0cdddeb4b9d00e00a754ca24330b834025fa8340670784193b03f89bd9"
  end

  resource "wheel-15" do
    url "https://files.pythonhosted.org/packages/63/34/ba1c580383c9eada3711951fef0795c80b829a078d72188184bcab9dd527/packaging-26.3-py3-none-any.whl"
    sha256 "d7193f7c8e4e93f444fde0262bf90af30e16fa0ad0ad44cb553c87339b23cd1c"
  end

  resource "wheel-16" do
    url "https://files.pythonhosted.org/packages/46/2a/f9697576603dae937727827505a6126a066affb227034e77e6f9068910da/pyelftools-0.33-py3-none-any.whl"
    sha256 "f215ad5f47d3f1373a21496a6c9e0707c622840d0622f23ff7ce08678b020036"
  end

  resource "wheel-17" do
    url "https://files.pythonhosted.org/packages/71/46/17f022dd3e953bf20a04a028a21ec746d942f8d2af30fa0f124fa0e6a684/pygments-2.21.0-py3-none-any.whl"
    sha256 "2363c69b61c4a97c838da3b130dcd6468f4848992b21a82f2a63ec34377137d9"
  end

  resource "wheel-18" do
    url "https://files.pythonhosted.org/packages/58/34/e4ac153acdbcfba7f48bc73d6586a74c91cc919fcc2e29acbf81be329d1f/python_can-4.6.1-py3-none-any.whl"
    sha256 "17f95255868a95108dcfcb90565a684dad32d5a3ebb35afd14f739e18c84ff6c"
  end

  resource "wheel-19" do
    url "https://files.pythonhosted.org/packages/82/3b/64d4899d73f91ba49a8c18a8ff3f0ea8f1c1d75481760df8c68ef5235bf5/rich-15.0.0-py3-none-any.whl"
    sha256 "33bd4ef74232fb73fe9279a257718407f169c09b78a87ad3d296f548e27de0bb"
  end

  resource "wheel-20" do
    url "https://files.pythonhosted.org/packages/b7/ce/149a00dd41f10bc29e5921b496af8b574d8413afcd5e30dfa0ed46c2cc5e/six-1.17.0-py2.py3-none-any.whl"
    sha256 "4721f391ed90541fddacab5acf947aa0d3dc7d27b2e1e8eda2be8970586c3274"
  end

  resource "wheel-21" do
    url "https://files.pythonhosted.org/packages/88/73/6a2087c72975cfc07394623bca8d17654342ea4055ae368deafe5a81a542/soupsieve-4.1-py3-none-any.whl"
    sha256 "e4d667b3974ce6e038e7390486b8093369854a1d345ffdd4c121dfc4a782e809"
  end

  resource "wheel-22" do
    url "https://files.pythonhosted.org/packages/49/d3/b8441a820a491ddfc024b0b0cf0393375b75ea13866d9c66727e54c2fc80/typing_extensions-4.16.0-py3-none-any.whl"
    sha256 "481caa481374e813c1b176ada14e97f1f67a4539ce9cfeb3f350d78d6370c2e8"
  end

  resource "wheel-23" do
    url "https://files.pythonhosted.org/packages/d5/46/d011725b0c89e853dc44cceb738a307cde5d240d023d6d40a82d1b4e1182/wrapt-1.17.3-cp314-cp314-macosx_10_13_x86_64.whl"
    sha256 "e228514a06843cae89621384cfe3a80418f3c04aadf8a3b14e46a7be704e4235"
  end

  resource "wheel-24" do
    url "https://files.pythonhosted.org/packages/2e/9e/3ad852d77c35aae7ddebdbc3b6d35ec8013af7d7dddad0ad911f3d891dae/wrapt-1.17.3-cp314-cp314-macosx_11_0_arm64.whl"
    sha256 "5ea5eb3c0c071862997d6f3e02af1d055f381b1d25b286b9d6644b79db77657c"
  end

  resource "wheel-25" do
    url "https://files.pythonhosted.org/packages/1f/f6/a933bd70f98e9cf3e08167fc5cd7aaaca49147e48411c0bd5ae701bb2194/wrapt-1.17.3-py3-none-any.whl"
    sha256 "7171ae35d2c33d326ac19dd8facb1e82e5fd04ef8c6c0e394d7af55a55051c22"
  end

  resource "wheel-26" do
    url "https://files.pythonhosted.org/packages/a5/46/ac86e3a3ff355058cd0818b01a3a97ca3f2abc0a034f1edb8eea27cea65c/zeroconf-0.148.0-cp314-cp314-macosx_10_13_x86_64.whl"
    sha256 "2158d8bfefcdb90237937df65b2235870ccef04644497e4e29d3ab5a4b3199b6"
  end

  resource "wheel-27" do
    url "https://files.pythonhosted.org/packages/de/02/c5e8cd8dfda0ca16c7309c8d12c09a3114e5b50054bce3c93da65db8b8e4/zeroconf-0.148.0-cp314-cp314-macosx_11_0_arm64.whl"
    sha256 "695f6663bf8df30fe1826a2c4d5acd8213d9cbd9111f59d375bf1ad635790e98"
  end

  resource "wheel-28" do
    url "https://files.pythonhosted.org/packages/ef/55/6dc6d6bb953bdfc52519a0059592c52b6e3b8ad51cf8256dffceb55b0610/setuptools-84.2.1-py3-none-any.whl"
    sha256 "ca140b45d5325a9478f880e351484f62fef15f336462e449ca0c03c873d589c2"
  end

  resource "wheel-29" do
    url "https://files.pythonhosted.org/packages/2e/29/69cfbb602cd91690c55d38ba9fe53e6a7e76a6fa647bf38f19c138d25449/wheel-0.48.0-py3-none-any.whl"
    sha256 "3217dcc807155e45db462d7ef2431f5ddda0d7273b700d05a67b271ceb1287ab"
  end

  def install
    wheelhouse = buildpath/"wheelhouse"
    wheelhouse.mkpath
    wheelhouse.install_symlink resource("wheel-0").cached_download => "argparse_addons-0.12.0-py3-none-any.whl"
    wheelhouse.install_symlink resource("wheel-1").cached_download => "beautifulsoup4-4.15.0-py3-none-any.whl"
    wheelhouse.install_symlink resource("wheel-2").cached_download => "bincopy-20.1.1-py3-none-any.whl"
    wheelhouse.install_symlink resource("wheel-3").cached_download => "can_isotp-2.0.7-py3-none-any.whl"
    wheelhouse.install_symlink resource("wheel-4").cached_download => "cancorder_utils-0.2.0-py3-none-any.whl"
    wheelhouse.install_symlink resource("wheel-5").cached_download => "deprecation-2.1.0-py2.py3-none-any.whl"
    wheelhouse.install_symlink resource("wheel-6").cached_download => "humanfriendly-10.0-py2.py3-none-any.whl"
    wheelhouse.install_symlink resource("wheel-7").cached_download => "ifaddr-0.2.0-py3-none-any.whl"
    wheelhouse.install_symlink resource("wheel-8").cached_download => "jinja2-3.1.6-py3-none-any.whl"
    wheelhouse.install_symlink resource("wheel-9").cached_download => "markdown_it_py-4.3.0-py3-none-any.whl"
    wheelhouse.install_symlink resource("wheel-10").cached_download => "markdownify-1.2.3-py3-none-any.whl"
    wheelhouse.install_symlink resource("wheel-11").cached_download => "markupsafe-3.0.4-cp314-cp314-macosx_10_15_x86_64.whl"
    wheelhouse.install_symlink resource("wheel-12").cached_download => "markupsafe-3.0.4-cp314-cp314-macosx_11_0_arm64.whl"
    wheelhouse.install_symlink resource("wheel-13").cached_download => "mdurl-0.1.2-py3-none-any.whl"
    wheelhouse.install_symlink resource("wheel-14").cached_download => "odxtools-11.7.1-py3-none-any.whl"
    wheelhouse.install_symlink resource("wheel-15").cached_download => "packaging-26.3-py3-none-any.whl"
    wheelhouse.install_symlink resource("wheel-16").cached_download => "pyelftools-0.33-py3-none-any.whl"
    wheelhouse.install_symlink resource("wheel-17").cached_download => "pygments-2.21.0-py3-none-any.whl"
    wheelhouse.install_symlink resource("wheel-18").cached_download => "python_can-4.6.1-py3-none-any.whl"
    wheelhouse.install_symlink resource("wheel-19").cached_download => "rich-15.0.0-py3-none-any.whl"
    wheelhouse.install_symlink resource("wheel-20").cached_download => "six-1.17.0-py2.py3-none-any.whl"
    wheelhouse.install_symlink resource("wheel-21").cached_download => "soupsieve-4.1-py3-none-any.whl"
    wheelhouse.install_symlink resource("wheel-22").cached_download => "typing_extensions-4.16.0-py3-none-any.whl"
    wheelhouse.install_symlink resource("wheel-23").cached_download => "wrapt-1.17.3-cp314-cp314-macosx_10_13_x86_64.whl"
    wheelhouse.install_symlink resource("wheel-24").cached_download => "wrapt-1.17.3-cp314-cp314-macosx_11_0_arm64.whl"
    wheelhouse.install_symlink resource("wheel-25").cached_download => "wrapt-1.17.3-py3-none-any.whl"
    wheelhouse.install_symlink resource("wheel-26").cached_download => "zeroconf-0.148.0-cp314-cp314-macosx_10_13_x86_64.whl"
    wheelhouse.install_symlink resource("wheel-27").cached_download => "zeroconf-0.148.0-cp314-cp314-macosx_11_0_arm64.whl"
    wheelhouse.install_symlink resource("wheel-28").cached_download => "setuptools-84.2.1-py3-none-any.whl"
    wheelhouse.install_symlink resource("wheel-29").cached_download => "wheel-0.48.0-py3-none-any.whl"
    venv = virtualenv_create(libexec, "python3.14", system_site_packages: false)
    system "python3.14", "-m", "pip", "--python=#{libexec}/bin/python", "install", "--no-index", "--no-deps", "--find-links", wheelhouse,
           "argparse-addons==0.12.0",
           "beautifulsoup4==4.15.0",
           "bincopy==20.1.1",
           "can-isotp==2.0.7",
           "cancorder-utils==0.2.0",
           "deprecation==2.1.0",
           "humanfriendly==10.0",
           "ifaddr==0.2.0",
           "Jinja2==3.1.6",
           "markdown-it-py==4.3.0",
           "markdownify==1.2.3",
           "MarkupSafe==3.0.4",
           "mdurl==0.1.2",
           "odxtools==11.7.1",
           "packaging==26.3",
           "pyelftools==0.33",
           "Pygments==2.21.0",
           "python-can==4.6.1",
           "rich==15.0.0",
           "six==1.17.0",
           "soupsieve==4.1",
           "typing_extensions==4.16.0",
           "wrapt==1.17.3",
           "zeroconf==0.148.0",
           "setuptools==84.2.1",
           "wheel==0.48.0"
    venv.pip_install_and_link buildpath
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/epy --version")
    assert_match "import-odx", shell_output("#{bin}/epy --help")
    system "#{bin}/epy", "import-odx", "--help"
    system "#{bin}/epy", "verify", "--help"
  end
end
