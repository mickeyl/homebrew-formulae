cask "blink1bar" do
  version "1.1.1"
  sha256 "48199a8cf15c3fbc87b9e02a94a18aba4c0e19e0cc755f18c17caeaf27448c1c"

  url "https://github.com/mickeyl/Blink1/releases/download/#{version}/Blink1Bar-#{version}-macOS.zip"
  name "Blink1Bar"
  desc "Drive a ThingM blink(1) from the menu bar"
  homepage "https://github.com/mickeyl/Blink1"

  depends_on macos: :tahoe

  app "Blink1Bar.app"

  uninstall quit: "de.vanille.Blink1Bar"

  zap trash: [
    "~/Library/Application Support/Blink1Bar",
    "~/Library/Preferences/de.vanille.Blink1Bar.plist",
  ]
end
