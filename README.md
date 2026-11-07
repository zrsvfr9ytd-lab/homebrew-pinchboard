# Pinchboard for Homebrew

**Pinch four fingers, and every app is there.**

[Pinchboard](https://github.com/zrsvfr9ytd-lab/pinchboard) brings back the full-screen view of all your apps on the Mac: a calm grid
over your blurred desktop, opened with a pinch on the trackpad and closed by spreading your fingers.
The way you remember it. Free.

```sh
brew install --cask zrsvfr9ytd-lab/pinchboard/pinchboard
```

Updates come with `brew upgrade`. Using the full name adds this tap and trusts it in one step.

## What you get
- **Open and close with your fingers:** thumb and three fingers together open the overview, spreading closes it. In between, the view follows your fingers.
- **Grid and pages:** seven by five apps per page, swipe with two fingers to turn the page, arrange everything the way you like.
- **Folders:** drag one app onto another. Pinchboard suggests a name based on the category.
- **Search:** just start typing, Return opens the first match.
- **Edit mode:** hold an icon (or the ⌥ key) until everything wiggles, then rearrange apps or move them to the Trash. Right-click an app to hide it.
- **Without a trackpad:** ⌃⌥L or a hot corner.
- **Stays on your Mac:** no account, no ads, no analytics. Pinchboard only checks GitHub once a day for a new version.

Requires macOS 26 or later, Apple silicon or Intel.

## First launch
Pinchboard is not notarized by Apple, so macOS blocks the first launch once:
System Settings → Privacy & Security → “Open Anyway”,
or in Terminal `xattr -dr com.apple.quarantine /Applications/Pinchboard.app`.
Pinchboard then walks you through the Accessibility permission it needs for the gesture.

More, including a direct download and a German guide: [zrsvfr9ytd-lab/pinchboard](https://github.com/zrsvfr9ytd-lab/pinchboard).

---

**Deutsch:** Pinchboard bringt die Vollbild-Übersicht aller Apps zurück – vier Finger zusammen, und alles ist da,
mit Seiten, Ordnern und Suche. Installieren mit dem Befehl oben, Anleitung auf Deutsch im
[Pinchboard-Repo](https://github.com/zrsvfr9ytd-lab/pinchboard#deutsch).
