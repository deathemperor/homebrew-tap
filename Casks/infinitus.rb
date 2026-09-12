cask "infinitus" do
  version "0.5.0-alpha.2"
  sha256 "65bcee0077bdc34a1824da023c87a537195abdd85588642ff41d06a5c10aa91b"

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
