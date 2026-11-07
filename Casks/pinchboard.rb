cask "pinchboard" do
  version "1.15.0"
  sha256 "c94b2d0b60fb099a1032634dfa6d1a13e1a389ca9ef08105ed9d7f8cba6b2ff9"

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
