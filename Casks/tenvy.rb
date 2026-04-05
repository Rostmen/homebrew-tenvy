cask "tenvy" do
  version "1.0.42"
  sha256 "c060092c0ba3a88da0d64627e9aa53e8dc8e06175b8fc61a7b09e99f43f9cb9b"

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
