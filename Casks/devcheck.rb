# typed: false
# frozen_string_literal: true

# Homebrew cask template for DevCheck.
# Publish under: brew tap bkrdmrcioglu/devcheck
# Then: brew install --cask bkrdmrcioglu/devcheck/devcheck
#
# After each notarized release, bump version + sha256 to match:
#   https://github.com/bkrdmrcioglu/devcheck-site/releases/download/vX.Y.Z/DevCheck-X.Y.Z.zip

cask "devcheck" do
  version "0.2.5"
  sha256 "0e080c4c5589b28e1c243de8d6436306e2f2c3b45fd0aab80d0f588868ea2574"

  url "https://github.com/bkrdmrcioglu/devcheck-site/releases/download/v0.2.5/DevCheck-0.2.5.zip"
  name "DevCheck"
  desc "Localhost HTTP header shield + App Store / Play prep"
  homepage "https://devsuites.dev/devcheck/"

  depends_on macos: :sonoma

  app "DevCheck.app"

  zap trash: [
    "~/Library/Preferences/com.devcheck.app.plist",
    "~/Library/Application Support/DevCheck",
  ]
end
