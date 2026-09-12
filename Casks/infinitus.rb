cask "infinitus" do
  version "0.5.0-alpha.3"
  sha256 "5630f57ea496ba106da397803f935bcc6cb30c3f305af2870e6a3a24397fc3f9"

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
