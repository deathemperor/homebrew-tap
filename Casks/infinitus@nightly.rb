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

    Builds are signed with a Developer ID and notarized by Apple, so they
    launch without a Gatekeeper prompt.
  EOS
end
