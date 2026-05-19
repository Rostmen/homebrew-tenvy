cask "tenvy" do
  version "1.0.51"
  sha256 "de9bae7c46dd8e14fb7d292a9114adcd2906141f45f59fe048c1820b6f1fd06f"

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
