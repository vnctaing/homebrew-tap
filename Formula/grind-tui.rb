class GrindTui < Formula
  desc "LeetCode in your terminal — browse, run, and submit problems from a TUI"
  homepage "https://github.com/vnctaing/grind-tui"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vnctaing/grind-tui/releases/download/v0.1.0/grind-tui-aarch64-apple-darwin.tar.gz"
      sha256 "83371ff79c7cedd28cc655e83af8565590d4a109c2fa02fb8d4f5d970bbf9445"
    end
    on_intel do
      url "https://github.com/vnctaing/grind-tui/releases/download/v0.1.0/grind-tui-x86_64-apple-darwin.tar.gz"
      sha256 "ac6ac31084bcfe9458b7d292b7e38dc5fa2f527c05b7dc17932fbe6c707a8682"
    end
  end

  on_linux do
    url "https://github.com/vnctaing/grind-tui/releases/download/v0.1.0/grind-tui-x86_64-unknown-linux-musl.tar.gz"
    sha256 "1808808f64103b660dd292765089b231b26e52d534be8862a9966bcc93ea4c61"
  end

  def install
    bin.install "grind"
  end

  test do
    assert_match "grind-tui", shell_output("#{bin}/grind --help")
  end
end
