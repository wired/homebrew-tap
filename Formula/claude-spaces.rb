class ClaudeSpaces < Formula
  desc "tmux-based session picker for Claude Code"
  homepage "https://github.com/wired/claude-spaces"
  url "https://github.com/wired/claude-spaces/archive/refs/tags/v0.9.7.tar.gz"
  sha256 "b5b6692f0eeffe3f9674e1129034d73011aafe3fee6a6ddafd38b44b5856eb0a"
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
