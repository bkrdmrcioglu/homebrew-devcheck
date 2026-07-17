cask "devcheck" do
  version "0.2.9"
  sha256 "e287db774cf619d09d04e4e29afdc40668327884b2dc341f85318744c8a3951a"

  url "https://github.com/bkrdmrcioglu/devcheck-site/releases/download/v#{version}/DevCheck-#{version}.zip"
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
