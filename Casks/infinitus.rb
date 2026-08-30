cask "infinitus" do
  version "0.1.1"
  sha256 "28df3e0d488f3aad060bbf834807f2e896aa8578566bb41490368a5187507479"

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
