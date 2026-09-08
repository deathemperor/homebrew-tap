cask "infinitus" do
  version "0.4.4-alpha.2"
  sha256 "0301e6d3dfd2434b260c56b85219f9fffeeb89131afe2a9b03b47b97692807bf"

  url "https://github.com/deathemperor/infinitus/releases/download/v#{version}/Infinitus-#{version}.zip"
  name "Infinitus"
  desc "Every Claude account in one menu bar — swap before you stall"
  homepage "https://github.com/deathemperor/infinitus"

  depends_on macos: :sonoma
  conflicts_with cask: "infinitus@nightly"

  app "Infinitus.app"
  binary "#{appdir}/Infinitus.app/Contents/MacOS/infinitusctl"

  caveats <<~EOS
    The app drives the claude-swap engine:
      uv tool install claude-swap   (or pipx install claude-swap)
  EOS
end
