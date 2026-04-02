class ClaudeSpaces < Formula
  desc "tmux-based session picker for Claude Code"
  homepage "https://github.com/wired/claude-spaces"
  url "https://github.com/wired/claude-spaces/archive/refs/tags/v0.9.2.tar.gz"
  sha256 "7a5961bb8198b16f36c22c1be740a26dc1cc5fdfb810e17d6f3f4dccaa8629a1"
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
