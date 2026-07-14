# typed: false
# frozen_string_literal: true

# Homebrew cask template for DevCheck.
# Publish under: brew tap bkrdmrcioglu/devcheck
# Then: brew install --cask bkrdmrcioglu/devcheck/devcheck
#
# After each notarized release, bump version + sha256 to match:
#   https://github.com/bkrdmrcioglu/devcheck-site/releases/download/vX.Y.Z/DevCheck-X.Y.Z.zip

cask "devcheck" do
  version "0.2.2"
  sha256 "277a5476c5fc42f18a818e1655527857e5001306a1eb26e50b887d462574dcf4"

  url "https://github.com/bkrdmrcioglu/devcheck-site/releases/download/v#{version}/DevCheck-#{version}.zip"
  name "DevCheck"
  desc "Localhost HTTP header shield + App Store / Play prep"
  homepage "https://devsuites.dev/devcheck/"

  depends_on macos: ">= :sonoma"

  app "DevCheck.app"

  zap trash: [
    "~/Library/Preferences/com.devcheck.app.plist",
    "~/Library/Application Support/DevCheck",
  ]
end
