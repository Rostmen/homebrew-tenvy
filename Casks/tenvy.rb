cask "tenvy" do
  version "1.0.24"
  sha256 "eacf56b76ed820558dcfe09b795ee6fef21090ee4ebba0ad3f1b105c36417213"

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
