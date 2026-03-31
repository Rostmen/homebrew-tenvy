cask "tenvy" do
  version "1.0.29"
  sha256 "e01c2385c6b805f1303477b03825789d5bfa7520258176d2f616f0bc33ed1eff"

  url "https://github.com/Rostmen/ClaudeGUI/releases/download/v#{version}/Tenvy-#{version}.dmg"
  name "Tenvy"
  desc "macOS app for managing and resuming Claude Code CLI sessions"
  homepage "https://github.com/Rostmen/ClaudeGUI"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "Tenvy.app"

  zap trash: [
    "~/Library/Application Support/com.kobizsky.tenvy",
    "~/Library/Caches/com.kobizsky.tenvy",
    "~/Library/Preferences/com.kobizsky.tenvy.plist",
    "~/.claude/hooks/chat-sessions-hook.sh",
  ]
end
