cask "infinitus" do
  version "0.5.0-alpha.5"
  sha256 "7519160bfa6aedcc961297b3a418796f740ac03bde70c57c9e60dc9ea8d8beb7"

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
