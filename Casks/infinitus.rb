cask "infinitus" do
  version "0.5.0-alpha.12"
  sha256 "0d628e99627bac74ef890051be03084d878ab9e66645b8b4a30ef40928d316f8"

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
