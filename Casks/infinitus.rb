cask "infinitus" do
  version "0.4.4-alpha.1"
  sha256 "74526cca5091d280790179fc89d1ae58c07840469292a9adccb6461e8d72027d"

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
