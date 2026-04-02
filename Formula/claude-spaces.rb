class ClaudeSpaces < Formula
  desc "tmux-based session picker for Claude Code"
  homepage "https://github.com/wired/claude-spaces"
  url "https://github.com/wired/claude-spaces/archive/refs/tags/v0.9.0.tar.gz"
  sha256 "3006a7307e4ef8466284cbb12f8dc489f37ec4bb1d3877ea09e756bd2d449886"
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
