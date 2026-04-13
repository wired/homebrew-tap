class ClaudeSpaces < Formula
  desc "tmux-based session picker for Claude Code"
  homepage "https://github.com/wired/claude-spaces"
  url "https://github.com/wired/claude-spaces/archive/refs/tags/v0.9.9.tar.gz"
  sha256 "690d2e711d7b07af82046b3d04dc220195986fb62539802f70aebeac2f6e448e"
  license "MIT"

  depends_on "bash"
  depends_on "tmux"
  depends_on "jq"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match "claude-spaces", shell_output("#{bin}/claude-spaces --help")
  end
end
