cask "infinitus@nightly" do
  version :latest
  sha256 :no_check

  url "https://github.com/deathemperor/infinitus/releases/download/nightly/Infinitus-nightly.zip"
  name "Infinitus Nightly"
  desc "Every Claude account in one menu bar — daily build of main"
  homepage "https://github.com/deathemperor/infinitus"

  depends_on macos: :sonoma
  conflicts_with cask: "infinitus"

  app "Infinitus.app"

  caveats <<~EOS
    Rolling build of main — `brew reinstall infinitus@nightly` to update
    (version :latest never auto-upgrades).

    Builds are ad-hoc signed, not notarized. If Gatekeeper refuses the
    first launch:
      xattr -dr com.apple.quarantine "/Applications/Infinitus.app"
    or install with --no-quarantine.
  EOS
end
