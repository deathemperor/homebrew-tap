cask "limitless" do
  version "0.1.0"
  sha256 "c3fabf2206f66f13ac1bb41ff48ba8ccc4992d73618c18f8fb8ce22d7faba5ce"

  url "https://github.com/deathemperor/limitless/releases/download/v#{version}/Limitless-#{version}.zip"
  name "Limitless"
  desc "Every Claude account in one menu bar — swap before you stall"
  homepage "https://github.com/deathemperor/limitless"

  depends_on macos: :sonoma
  conflicts_with cask: "limitless@nightly"

  app "Limitless.app"

  caveats <<~EOS
    Builds are ad-hoc signed, not notarized. If Gatekeeper refuses the
    first launch:
      xattr -dr com.apple.quarantine "/Applications/Limitless.app"
    or install with --no-quarantine.

    The app drives the claude-swap engine:
      uv tool install claude-swap   (or pipx install claude-swap)
  EOS
end
