class GrindTui < Formula
  desc "LeetCode in your terminal — browse, run, and submit problems from a TUI"
  homepage "https://github.com/vnctaing/grind-tui"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vnctaing/grind-tui/releases/download/v0.1.0/grind-tui-aarch64-apple-darwin.tar.gz"
      sha256 "5722dc89eb4c24b02666ed10822555e22cd912d4d3f7bf824153bf64d993c51c"
    end
    on_intel do
      url "https://github.com/vnctaing/grind-tui/releases/download/v0.1.0/grind-tui-x86_64-apple-darwin.tar.gz"
      sha256 "a4c6ed92ce69c2212a555297f9bad982d69e5520fceabf28d5845d56d8c1031b"
    end
  end

  on_linux do
    url "https://github.com/vnctaing/grind-tui/releases/download/v0.1.0/grind-tui-x86_64-unknown-linux-musl.tar.gz"
    sha256 "08f1c40de657ed0e1f515f053dbb27f6bdf1ff574e7a43333702620f8f468443"
  end

  def install
    bin.install "grind"
  end

  test do
    assert_match "grind-tui", shell_output("#{bin}/grind --help")
  end
end
