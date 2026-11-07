cask "pinchboard" do
  version "1.14.2"
  sha256 "d5b28e263da7093ebb123a9bdcf4bde734a8a881f3430df0200e5a697bb84a82"

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
