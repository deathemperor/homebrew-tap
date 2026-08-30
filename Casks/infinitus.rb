cask "infinitus" do
  version "0.1.2"
  sha256 "f309f1b683f3baeab2e335a2e6390984d3c4d2aa049401d98fca8352f213d0d3"

  url "https://github.com/deathemperor/infinitus/releases/download/v#{version}/Infinitus-#{version}.zip"
  name "Infinitus"
  desc "Every Claude account in one menu bar — swap before you stall"
  homepage "https://github.com/deathemperor/infinitus"

  depends_on macos: :sonoma
  conflicts_with cask: "infinitus@nightly"

  app "Infinitus.app"

  caveats <<~EOS
    Builds are ad-hoc signed, not notarized. If Gatekeeper refuses the
    first launch:
      xattr -dr com.apple.quarantine "/Applications/Infinitus.app"
    or install with --no-quarantine.

    The app drives the claude-swap engine:
      uv tool install claude-swap   (or pipx install claude-swap)
  EOS
end
