# typed: false
# frozen_string_literal: true

# Homebrew cask template for DevCheck.
# Publish under: brew tap bkrdmrcioglu/devcheck
# Then: brew install --cask bkrdmrcioglu/devcheck/devcheck
#
# After each notarized release, bump version + sha256 to match:
#   https://github.com/bkrdmrcioglu/devcheck-site/releases/download/vX.Y.Z/DevCheck-X.Y.Z.zip

cask "devcheck" do
  version "0.2.7"
  sha256 "9311ae25a2c1faa796a148c7a37c907c62db79f5adfe776ccd82b17a903809e7"

  url "https://github.com/bkrdmrcioglu/devcheck-site/releases/download/v0.2.7/DevCheck-0.2.7.zip"
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
