cask "lsusd-menubar" do
  version "2.1.3"
  sha256 "f6105ba4ce6c15ed099429eb56d601c14733435791348da1e5e789bcface5afc"

  url "https://github.com/mickeyl/lsusd/releases/download/macos-v#{version}/LSUSD-#{version}-macOS.zip"
  name "LSUSD"
  desc "Native menu bar utility for inspecting USB and serial devices"
  homepage "https://github.com/mickeyl/lsusd"

  depends_on macos: :tahoe

  app "LSUSD.app"

  zap trash: "~/Library/Preferences/de.vanille.lsusd.plist"
end
