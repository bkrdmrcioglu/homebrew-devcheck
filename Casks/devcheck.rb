# typed: false
# frozen_string_literal: true

# Homebrew cask template for DevCheck.
# Publish under: brew tap bkrdmrcioglu/devcheck
# Then: brew install --cask bkrdmrcioglu/devcheck/devcheck
#
# After each notarized release, bump version + sha256 to match:
#   https://github.com/bkrdmrcioglu/devcheck-site/releases/download/vX.Y.Z/DevCheck-X.Y.Z.zip

cask "devcheck" do
  version "0.2.6"
  sha256 "a3736c66addacca298c39ade94e011afe8291709e1b347f0c77aaf3e1d8a1d34"

  url "https://github.com/bkrdmrcioglu/devcheck-site/releases/download/v0.2.6/DevCheck-0.2.6.zip"
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
