cask "lsusd-menubar" do
  version "2.1.1"
  sha256 "2fe8d543497577bfe61862a1610c9ac75064ebfd23d698471653b58fc867680f"

  url "https://github.com/mickeyl/lsusd/releases/download/macos-v#{version}/LSUSD-#{version}-macOS.zip"
  name "LSUSD"
  desc "Native menu bar utility for inspecting USB and serial devices"
  homepage "https://github.com/mickeyl/lsusd"

  depends_on macos: :tahoe

  app "LSUSD.app"

  zap trash: "~/Library/Preferences/de.vanille.lsusd.plist"
end
