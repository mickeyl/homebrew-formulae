cask "cancorder" do
  version "1.0.146"
  sha256 "4508c503125b2290fed2af3b0f46933dc771c17e8a5e719aca7a9609614ee019"

  url "https://www.vanille.de/downloads/CANcorder/CANcorder-macos-1.0.136.zip"
  name "CANcorder"
  desc "CAN bus recorder and playback utility"
  homepage "https://www.vanille.de/"

  depends_on macos: ">= :big_sur"

  app "CANcorder.app"
end
