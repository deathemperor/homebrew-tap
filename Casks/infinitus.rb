cask "infinitus" do
  version "0.5.0-alpha.8"
  sha256 "4f78dd008edc5922f98be172225f1f6a81116279debc36e0a2d5182f461045c5"

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
