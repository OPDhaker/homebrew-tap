cask "jingle-app" do
  version "0.1.0"
  sha256 "dab8c824974f58966872acc750a0fa604e806ff0aa77e00a874ca21744757a43"

  url "https://github.com/OPDhaker/jingle/releases/download/v#{version}/Jingle_macos_universal.dmg"
  name "Jingle"
  desc "Menu-bar app for jingle, the git commit and push producer tag"
  homepage "https://github.com/OPDhaker/jingle"

  # The app runs the jingle CLI for everything it does.
  depends_on cask: "opdhaker/tap/jingle"
  depends_on macos: ">= :big_sur"

  app "Jingle.app"

  # The app isn't notarized, and Homebrew quarantines cask downloads, so
  # Gatekeeper would block it on first launch.
  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Jingle.app"]
  end

  uninstall quit: "dev.opdhaker.jingle"

  zap trash: [
    "~/Library/Application Support/dev.opdhaker.jingle",
    "~/Library/Caches/dev.opdhaker.jingle",
    "~/Library/WebKit/dev.opdhaker.jingle",
  ]
end
