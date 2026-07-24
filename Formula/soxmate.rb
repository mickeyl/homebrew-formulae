class Soxmate < Formula
  include Language::Python::Virtualenv

  desc "Friendly command-line interface for SoX"
  homepage "https://github.com/mickeyl/soxmate"
  url "https://github.com/mickeyl/soxmate/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "c6356a9eb339e57c19a12cf853fce00a4507bd9f73b87d300efe97244199c652"
  license "MIT"
  head "https://github.com/mickeyl/soxmate.git", branch: "master"

  depends_on "python@3.14"
  depends_on "sox"

  def install
    virtualenv_install_with_resources
    man1.install "soxmate.1"
    generate_completions_from_executable(bin/"soxmate", "completion")
  end

  test do
    input = testpath/"input.wav"
    output = testpath/"normalized.flac"
    system formula_opt_bin("sox")/"sox",
           "-n", "-r", "8000", "-c", "1", input,
           "synth", "0.1", "sine", "440", "vol", "0.1"
    system bin/"soxmate", "normalize", input, output, "--peak", "-3", "--quiet"
    assert_path_exists output
    assert_match '"sample_rate": 8000',
                 shell_output("#{bin}/soxmate inspect #{output} --json --no-peak")
  end
end
