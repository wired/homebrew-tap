class ClaudeSpaces < Formula
  desc "tmux-based session picker for Claude Code"
  homepage "https://github.com/wired/claude-spaces"
  url "https://github.com/wired/claude-spaces/archive/refs/tags/v0.9.0.tar.gz"
  sha256 "fb488a07dd3980e2e51b2384a72743bbed878019d3d6948aa227c1461a19efd7"
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
