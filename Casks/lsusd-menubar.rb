cask "lsusd-menubar" do
  version "2.1.0"
  sha256 "0edc096788c861ca9416ffc27593c7d20c3ba41ff0e55bdbb0d599ab904f676f"

  url "https://github.com/mickeyl/lsusd/releases/download/macos-v#{version}/LSUSD-#{version}-macOS.zip"
  name "LSUSD"
  desc "Native menu bar utility for inspecting USB and serial devices"
  homepage "https://github.com/mickeyl/lsusd"

  depends_on macos: :tahoe

  app "LSUSD.app"

  zap trash: "~/Library/Preferences/de.vanille.lsusd.plist"
end
