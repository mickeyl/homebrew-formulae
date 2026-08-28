cask "lsusd-menubar" do
  version "2.1.2"
  sha256 "450fc41ef81a7c65d8428c0c13e9dca1b474d3022cc2d5a3fdd977bceddd17f0"

  url "https://github.com/mickeyl/lsusd/releases/download/macos-v#{version}/LSUSD-#{version}-macOS.zip"
  name "LSUSD"
  desc "Native menu bar utility for inspecting USB and serial devices"
  homepage "https://github.com/mickeyl/lsusd"

  depends_on macos: :tahoe

  app "LSUSD.app"

  zap trash: "~/Library/Preferences/de.vanille.lsusd.plist"
end
