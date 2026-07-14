cask "devcheck" do
  version "0.2.8"
  sha256 "aa02071ea31de24fb17fddb92483f1c1c50dbcea51a70022aae331af71e03154"

  url "https://github.com/bkrdmrcioglu/devcheck-site/releases/download/v0.2.8/DevCheck-0.2.8.zip"
  name "DevCheck"
  desc "Part of DevSuites — see https://devsuites.dev/devcheck/"
  homepage "https://devsuites.dev/devcheck/"

  depends_on macos: :sonoma

  app "DevCheck.app"

  zap trash: [
    "~/Library/Preferences/com.devcheck.app.plist",
    "~/Library/Application Support/DevCheck",
  ]
end
