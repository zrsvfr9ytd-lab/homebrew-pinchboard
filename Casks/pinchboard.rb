cask "pinchboard" do
  version "1.16.0"
  sha256 "aed994a6b0afb442451f79e18cbbe8526861b87a16efef3f9bd6415ed4c01f6f"

  url "https://github.com/zrsvfr9ytd-lab/pinchboard/releases/download/v#{version}/Pinchboard-#{version}.zip"
  name "Pinchboard"
  desc "Full-screen app overview opened with a four-finger pinch"
  homepage "https://github.com/zrsvfr9ytd-lab/pinchboard"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Pinchboard.app"

  uninstall quit: "io.github.zrsvfr9ytd-lab.pinchboard"

  zap trash: [
    "~/Library/Application Support/Pinchboard",
    "~/Library/Caches/io.github.zrsvfr9ytd-lab.pinchboard",
    "~/Library/HTTPStorages/io.github.zrsvfr9ytd-lab.pinchboard",
    "~/Library/Preferences/io.github.zrsvfr9ytd-lab.pinchboard.plist",
  ]

  caveats <<~EOS
    Pinchboard is not notarized by Apple. On first launch macOS blocks it:
      System Settings → Privacy & Security → "Open Anyway"
    or in Terminal:
      xattr -dr com.apple.quarantine /Applications/Pinchboard.app

    Details: https://github.com/zrsvfr9ytd-lab/pinchboard#first-launch
  EOS
end
