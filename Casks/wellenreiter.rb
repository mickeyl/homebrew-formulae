cask "wellenreiter" do
  version "3.2.0,1356"
  sha256 "3fc5d55177f2056e8d823956b3026d18860be7d502cdd77afbe1f776e46de604"

  url "https://github.com/mickeyl/wellenreiter/releases/download/macos-#{version.csv.first}-#{version.csv.second}/Wellenreiter-macos-#{version.csv.first}-#{version.csv.second}.zip"
  name "Wellenreiter"
  desc "Curated internet radio in the menu bar"
  homepage "https://www.vanille.de/apps/"

  depends_on macos: :tahoe

  app "Wellenreiter.app"

  uninstall quit: "de.vanille.wellenreiter"

  zap trash: "~/Library/Preferences/de.vanille.wellenreiter.plist"
end
