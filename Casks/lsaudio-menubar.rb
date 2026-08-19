cask "lsaudio-menubar" do
  version "1.1.0"
  sha256 "52f2826c70f69a86ec1eceb1d655f0d81ebed802ea24bc4b0b07d9bc0d7b2f39"

  url "https://github.com/mickeyl/lsaudio/releases/download/macos-v#{version}/LSAudio-#{version}-macOS.zip"
  name "LSAudio"
  desc "Native menu bar utility for inspecting and controlling audio processes"
  homepage "https://github.com/mickeyl/lsaudio"

  depends_on macos: :tahoe

  app "LSAudio.app"

  zap trash: "~/Library/Preferences/de.vanille.lsaudio.plist"
end
