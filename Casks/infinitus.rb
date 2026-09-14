cask "infinitus" do
  version "0.5.0-alpha.10"
  sha256 "07af0f15f97a30e161e405e6411d7cc644ab8e2641422f19f4c56481b0133f60"

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
