# Homebrew cask template; scripts/release.sh fills in the version and checksum and writes
# it to the tap (niklascarlsen/homebrew-tap).
cask "leap" do
  version "0.1.0"
  sha256 "67e3794430ae4056bb345c4f66078f78c9237b1911acff8b768ca47f676c8b98"

  url "https://github.com/niklascarlsen/leap/releases/download/v#{version}/Leap-#{version}.zip"
  name "Leap"
  desc "Keyboard-driven clicking and scrolling"
  homepage "https://github.com/niklascarlsen/leap"

  depends_on macos: ">= :golden_gate"

  app "Leap.app"

  uninstall quit: "com.niklascarlsen.leap"

  zap trash: [
    "~/Library/Preferences/com.niklascarlsen.leap.plist",
    "~/Library/Saved Application State/com.niklascarlsen.leap.savedState",
  ]
end
