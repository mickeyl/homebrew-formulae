cask "lsaudio-menubar" do
  version "1.1.1"
  sha256 "009b536ed4ebd80beb1c5feab09c7d82123e850dbd754c9612e9cc4956efdca5"

  url "https://github.com/mickeyl/lsaudio/releases/download/macos-v#{version}/LSAudio-#{version}-macOS.zip"
  name "LSAudio"
  desc "Native menu bar utility for inspecting and controlling audio processes"
  homepage "https://github.com/mickeyl/lsaudio"

  depends_on macos: :tahoe

  app "LSAudio.app"

  zap trash: "~/Library/Preferences/de.vanille.lsaudio.plist"
end
