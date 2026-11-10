# Homebrew cask template; scripts/release.sh fills in the version and checksum and writes
# it to the tap (niklascarlsen/homebrew-tap).
cask "leap" do
  version "0.1.1"
  sha256 "e61e4b0dd713c46ae655507e50b5cbb3ded9f8b0210c25d907b2d5b7f8c71399"

  url "https://github.com/niklascarlsen/leap/releases/download/v#{version}/Leap-#{version}.zip"
  name "Leap"
  desc "Keyboard-driven clicking and scrolling"
  homepage "https://github.com/niklascarlsen/leap"

  depends_on macos: :golden_gate

  app "Leap.app"

  uninstall quit: "com.niklascarlsen.leap"

  zap trash: [
    "~/Library/Preferences/com.niklascarlsen.leap.plist",
    "~/Library/Saved Application State/com.niklascarlsen.leap.savedState",
  ]
end
