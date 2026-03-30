cask "tenvy" do
  version "1.0.25"
  sha256 "3ad7b1ba3c0fc4a9ce2353d506dc0e2a30365e2e5372b99b35531f559b9d3f4f"

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
