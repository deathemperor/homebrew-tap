cask "limitless@nightly" do
  version :latest
  sha256 :no_check

  url "https://github.com/deathemperor/limitless/releases/download/nightly/Limitless-nightly.zip"
  name "Limitless Nightly"
  desc "Every Claude account in one menu bar — daily build of main"
  homepage "https://github.com/deathemperor/limitless"

  depends_on macos: ">= :sonoma"
  conflicts_with cask: "limitless"

  app "Limitless.app"

  caveats <<~EOS
    Rolling build of main — `brew reinstall limitless@nightly` to update
    (version :latest never auto-upgrades).

    Builds are ad-hoc signed, not notarized. If Gatekeeper refuses the
    first launch:
      xattr -dr com.apple.quarantine "/Applications/Limitless.app"
    or install with --no-quarantine.
  EOS
end
