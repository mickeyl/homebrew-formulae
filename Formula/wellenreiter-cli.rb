class WellenreiterCli < Formula
  desc "Terminal radio picker and stream debugger for Wellenreiter"
  homepage "https://gitlab.com/vanille-apps/radio"
  url "ssh://git@gitlab.com/vanille-apps/radio.git",
      branch: "master"
  version "3.0.1256"
  license :cannot_represent
  head "ssh://git@gitlab.com/vanille-apps/radio.git", branch: "master"

  depends_on :macos
  depends_on "python@3.13"

  def install
    system "make", "install", "prefix=#{prefix}",
           "SWIFT_BUILD_FLAGS=--quiet --disable-sandbox -Xswiftc -suppress-warnings"

    # The Textual TUI needs Python ≥ 3.10 (textual_image uses `match`).
    # macOS ships /usr/bin/python3 from Xcode's CommandLineTools which is
    # still 3.9, so we provision a private virtualenv with the Homebrew
    # Python and point the Swift binary at it via WELLENREITER_PYTHON.
    python = Formula["python@3.13"].opt_bin/"python3.13"
    system python, "-m", "venv", libexec/"venv"
    system libexec/"venv/bin/pip", "install", "--quiet", "--upgrade", "pip"
    system libexec/"venv/bin/pip", "install", "--quiet",
           "textual", "textual-image", "pillow"

    # Relocate the Swift binary so the public `bin/wellenreiter-cli` is a
    # thin shell wrapper that injects the venv path. The Swift binary's
    # @executable_path/../lib rpath still resolves to `<prefix>/lib` from
    # libexec/, so the Ogg/Vorbis frameworks remain reachable.
    libexec.install bin/"wellenreiter-cli"
    system "codesign", "--force", "--sign", "-", libexec/"wellenreiter-cli"

    (bin/"wellenreiter-cli").write <<~SH
      #!/bin/bash
      export WELLENREITER_PYTHON="#{libexec}/venv/bin/python3"
      exec "#{libexec}/wellenreiter-cli" "$@"
    SH
    chmod 0755, bin/"wellenreiter-cli"
  end

  test do
    assert_match "wellenreiter-cli", shell_output("#{bin}/wellenreiter-cli help")
    assert_path_exists lib/"ogg.framework"
    assert_path_exists lib/"vorbis.framework"
    assert_path_exists pkgshare/"tools/wellenreiter-tui-textual.py"
    assert_path_exists pkgshare/"manifest/stations.json"
    assert_path_exists libexec/"venv/bin/python3"
    system libexec/"venv/bin/python3", "-c", "import textual, textual_image, PIL"
  end
end
