cask "infinitus" do
  version "0.5.0-alpha.1"
  sha256 "bf39eaec1ce99289988a3fd6bd80ffed48f5945efe1f71ae801e523d470c495b"

  url "https://github.com/deathemperor/infinitus/releases/download/v#{version}/Infinitus-#{version}.zip"
  name "Infinitus"
  desc "Every Claude account in one menu bar — swap before you stall"
  homepage "https://github.com/deathemperor/infinitus"

  depends_on macos: :sonoma
  conflicts_with cask: "infinitus@nightly"

  app "Infinitus.app"
  binary "#{appdir}/Infinitus.app/Contents/MacOS/infinitusctl"
  binary "#{appdir}/Infinitus.app/Contents/MacOS/ictl"

  caveats <<~EOS
    The app drives the swapd engine:
      cargo install --git https://github.com/deathemperor/swapd swapd
  EOS
end
