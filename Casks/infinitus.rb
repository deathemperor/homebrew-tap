cask "infinitus" do
  version "0.5.0-alpha.4"
  sha256 "d4cdd23cf8497bc7131e4f6313f2f01cc169d02379487391d8bfa07bbdb4eaa9"

  url "https://github.com/deathemperor/infinitus/releases/download/v#{version}/Infinitus-#{version}.zip"
  name "Infinitus"
  desc "Every Claude account in one menu bar — swap before you stall"
  homepage "https://github.com/deathemperor/infinitus"

  depends_on macos: :sonoma
  conflicts_with cask: "infinitus@nightly"

  app "Infinitus.app"
  binary "#{appdir}/Infinitus.app/Contents/MacOS/infinitusctl"
  binary "#{appdir}/Infinitus.app/Contents/Resources/bin/infinitus"
  binary "#{appdir}/Infinitus.app/Contents/MacOS/ictl"

  caveats <<~EOS
    The swapd account engine is bundled. Open Infinitus Settings > Engines to get started.
  EOS
end
